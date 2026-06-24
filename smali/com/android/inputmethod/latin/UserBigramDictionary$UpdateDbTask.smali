.class Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;
.super Landroid/os/AsyncTask;
.source "UserBigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/UserBigramDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDbHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

.field private final mLocale:Ljava/lang/String;

.field private final mMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openHelper"    # Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;
    .param p4, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    .local p3, "pendingWrites":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 313
    iput-object p3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mMap:Ljava/util/HashSet;

    .line 314
    iput-object p4, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    .line 315
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mDbHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    .line 316
    return-void
.end method

.method private checkPruneData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 320
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    const-string v1, "frequency"

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "pair_id"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 324
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 326
    .local v13, "totalRowCount":I
    invoke-static {}, Lcom/android/inputmethod/latin/UserBigramDictionary;->access$0()I

    move-result v0

    if-le v13, v0, :cond_0

    .line 327
    invoke-static {}, Lcom/android/inputmethod/latin/UserBigramDictionary;->access$0()I

    move-result v0

    sub-int v0, v13, v0

    invoke-static {}, Lcom/android/inputmethod/latin/UserBigramDictionary;->access$1()I

    move-result v1

    add-int v10, v0, v1

    .line 328
    .local v10, "numDeleteRows":I
    const-string v0, "pair_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 329
    .local v12, "pairIdColumnId":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 330
    const/4 v9, 0x0

    .line 331
    .local v9, "count":I
    :goto_0
    if-ge v9, v10, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    .end local v9    # "count":I
    .end local v10    # "numDeleteRows":I
    .end local v12    # "pairIdColumnId":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 344
    return-void

    .line 332
    .restart local v9    # "count":I
    .restart local v10    # "numDeleteRows":I
    .restart local v12    # "pairIdColumnId":I
    :cond_1
    :try_start_1
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 335
    .local v11, "pairId":Ljava/lang/String;
    const-string v0, "main"

    const-string v1, "_id=?"

    .line 336
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    .line 335
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 341
    .end local v9    # "count":I
    .end local v10    # "numDeleteRows":I
    .end local v11    # "pairId":Ljava/lang/String;
    .end local v12    # "pairIdColumnId":I
    .end local v13    # "totalRowCount":I
    :catchall_0
    move-exception v0

    .line 342
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 343
    throw v0
.end method

.method private getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;

    .prologue
    .line 390
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 391
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "word1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "word2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "locale"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-object v0
.end method

.method private getFrequencyContentValues(II)Landroid/content/ContentValues;
    .locals 3
    .param p1, "pairId"    # I
    .param p2, "frequency"    # I

    .prologue
    .line 398
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 399
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "pair_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v1, "freq"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mDbHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 354
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "PRAGMA foreign_keys = ON;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mMap:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 357
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->checkPruneData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 384
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/inputmethod/latin/UserBigramDictionary;->access$2(Z)V

    .line 386
    const/4 v1, 0x0

    return-object v1

    .line 358
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;

    .line 361
    .local v8, "bi":Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
    const-string v1, "main"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 362
    const-string v3, "word1=? AND word2=? AND locale=?"

    .line 364
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->word1:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->word2:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 361
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 367
    .local v9, "c":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 370
    .local v11, "pairId":I
    const-string v1, "frequency"

    const-string v2, "pair_id=?"

    .line 371
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 370
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 378
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 381
    const-string v1, "frequency"

    const/4 v2, 0x0

    iget v3, v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->frequency:I

    invoke-direct {p0, v11, v3}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->getFrequencyContentValues(II)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 374
    .end local v11    # "pairId":I
    :cond_1
    const-string v1, "main"

    const/4 v2, 0x0

    .line 375
    iget-object v3, v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->word1:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->word2:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 374
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 376
    .local v12, "pairIdLong":Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v11

    .restart local v11    # "pairId":I
    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->access$2(Z)V

    .line 349
    return-void
.end method
