package main

import (
	"database/sql"
	"log"

	_ "github.com/jackc/pgx/v5/stdlib"
)

func main() {
	db, err := sql.Open("pgx", "host=localhost port=5432 user=root dbname=vocablist password=password sslmode=disable")
	if err != nil {
		log.Fatal("sql.Open failed")
	}
	defer db.Close()
	err = db.Ping()
	if err != nil {
		log.Fatal("Failed to connect to database")
	}
}

// API List
// /v1/[id]/[category]
// GET 更新が新しい順、更新が古い順、ランダムシャッフル
// POST カテゴリー追加、ユーザー追加、単語追加
// PUT 単語更新
// DELETE 単語削除
