<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        // $perPage = 10;
        // $books = Book::paginate($perPage);

        // return response()->json([
        // 'status' => 200,
        // 'message' => 'Found Books successfully',
        // 'data' => $books->items(),
        // 'totalElements' => $books->total(),
        // 'totalPages' => $books->lastPage(),
        // 'perPage' => $perPage,
        // ]);

        // Set default values for per page and sorting
    $defaultPerPage = 200;
    $perPage = $request->input('per_page', $defaultPerPage);
    $sortBy = $request->input('sort', 'id');
    $sortOrder = $request->input('order', 'ASC');



    // Fetch all books from the Book model with pagination and sorting
    $books = Book::orderBy($sortBy, $sortOrder)->paginate($perPage);
    $transformedBooks = $books->map(function ($book) {
        return [
            'id' => $book->id,
            'name' => $book->name,
            'author' => $book->author,
            'publish_date' => $book->publish_date,
            'created_at' => $book->created_at,
            'updated_at' => $book->updated_at,
        ];
    });

        // Customize the JSON response
    return response()->json([
        'code' => 200,
        'message' => 'Found Books Successfully',
        'result' => [
            'content' => $transformedBooks,
            'totalElements' => $books->total(),
            'totalPages' => $books->lastPage(),
            'page' => $books->currentPage(),
            'size' => $perPage,
            'sort' => ["$sortBy,$sortOrder"],
        ],
    ]);


    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {


        $book = new Book;
        $book->name = $request->name;
        $book->author = $request->author;
        $book->publish_date = $request->publish_date;
        $book->save();
        return response()->json([
        'code' => 200,
        "message" => "Successfully Book Added",
        'result' => [
            'id' => $book->id,
            'name' => $book->name,
            'author' => $book->author,
            'publish_date' => $book->publish_date,
            'createdAt' => $book->created_at,
            'updatedAt' => $book->updated_at,
            'createdBy' => $book->createdBy,
            'updatedBy' => $book->updatedBy,
        ],
    ],201);


    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $book = Book::find($id);
        if(!empty($book))
          {
            return response()->json([
                'code' => 200,
                "message" => "Found Book data",
                'result' => [
                    'id' => $book->id,
                    'name' => $book->name,
                    'author' => $book->author,
                    'publish_date' => $book->publish_date,
                    'createdAt' => $book->created_at,
                    'updatedAt' => $book->updated_at,
                    'createdBy' => $book->createdBy,
                    'updatedBy' => $book->updatedBy,
                ],

            ],201);
          }else{
            return response()->json([
                "message" => "Book Not Found"
            ],404);
          }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        if(Book::where('id',$id)->exists()){
            $book = Book::find($id);
            $book->name = is_null($request->name) ? $book->name : $request->name;
            $book->author = is_null($request->author) ? $book->author : $request->author;
            $book->publish_date = is_null($request->publish_date) ? $book->publish_date :          $request->publish_date;
            $book->save();
            $result = [
                'id' => $book->id,
                'name' => $book->name,
                'author' => $book->author,
                'publish_date' => $book->publish_date,
                'createdAt' => $book->created_at,
                'updatedAt' => $book->updated_at,
                'createdBy' => $book->createdBy,
                'updatedBy' => $book->updatedBy,
            ];

            if ($book->updated_at !== null) {
                $result['updatedAt'] = $book->updated_at;
            }

            if ($book->updatedBy !== null) {
                $result['updatedBy'] = $book->updatedBy;
            }

            // Exclude createdAt and createdBy if they are null
            if ($book->created_at !== null) {
                $result['createdAt'] = $book->created_at;
            }

            if ($book->createdBy !== null) {
                $result['createdBy'] = $book->createdBy;
            }
                 return response()->json([
        'code' => 200,
        "message" => "Successfully Book updated",
        'result' => [$result
            // 'id' => $book->id,
            // 'name' => $book->name,
            // 'author' => $book->author,
            // 'publish_date' => $book->publish_date,
            // 'createdAt' => $book->created_at,
            // 'updatedAt' => $book->updated_at,
            // 'createdBy' => $book->createdBy,
            // 'updatedBy' => $book->updatedBy,
        ],
    ],201);
        }else{
            return response()->json([
                "message" => "Book not Found",
            ],404);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        if(Book::where('id',$id)->exists()){
           $book = Book::find($id);
           $book->delete();
           return response()->json([
        'code' => 200,
        "message" => "Book Deleted",
        'result' => [
            'id' => $book->id,
            'name' => $book->name,
            'author' => $book->author,
            'publish_date' => $book->publish_date,
            'createdAt' => $book->created_at,
            'updatedAt' => $book->updated_at,
            'createdBy' => $book->createdBy,
            'updatedBy' => $book->updatedBy,
        ],

    ],202);

        }else{
            return response()->json([
                'code' => 404,
                "message" => "Book Not Found",

            ],404);
        }
    }
}
