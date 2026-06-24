.class public Lcom/android/inputmethod/latin/UserBigramDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserBigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;,
        Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;,
        Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "userbigram_dict.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final FREQUENCY_FOR_TYPED:I = 0x2

.field private static final FREQUENCY_MAX:I = 0x7f

.field private static final FREQ_COLUMN_FREQUENCY:Ljava/lang/String; = "freq"

.field private static final FREQ_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final FREQ_COLUMN_PAIR_ID:Ljava/lang/String; = "pair_id"

.field private static final FREQ_TABLE_NAME:Ljava/lang/String; = "frequency"

.field private static final MAIN_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final MAIN_COLUMN_LOCALE:Ljava/lang/String; = "locale"

.field private static final MAIN_COLUMN_WORD1:Ljava/lang/String; = "word1"

.field private static final MAIN_COLUMN_WORD2:Ljava/lang/String; = "word2"

.field private static final MAIN_TABLE_NAME:Ljava/lang/String; = "main"

.field protected static final SUGGEST_THRESHOLD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UserBigramDictionary"

.field private static sDeleteUserBigrams:I

.field private static final sDictProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaxUserBigrams:I

.field private static sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

.field private static volatile sUpdatingDB:Z


# instance fields
.field private final mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

.field private mLocale:Ljava/lang/String;

.field private mPendingWrites:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWritesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x2710

    sput v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sMaxUserBigrams:I

    .line 61
    const/16 v0, 0x3e8

    sput v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDeleteUserBigrams:I

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sUpdatingDB:Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    .line 98
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word1"

    const-string v2, "word1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word2"

    const-string v2, "word2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "locale"

    const-string v2, "locale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "pair_id"

    const-string v2, "pair_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "freq"

    const-string v2, "freq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/DictionaryEditor;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ime"    # Lcom/android/inputmethod/latin/DictionaryEditor;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "dicTypeId"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1, p4}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWritesLock:Ljava/lang/Object;

    .line 143
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 144
    iput-object p3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mLocale:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->loadDictionary()V

    .line 151
    :cond_1
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sMaxUserBigrams:I

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDeleteUserBigrams:I

    return v0
.end method

.method static synthetic access$2(Z)V
    .locals 0

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sUpdatingDB:Z

    return-void
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 248
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 251
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "main INNER JOIN frequency ON (main._id=frequency.pair_id)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 255
    sget-object v2, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 258
    sget-object v2, Lcom/android/inputmethod/latin/UserBigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 260
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "word1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "word2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "freq"

    aput-object v4, v2, v3

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    .line 259
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 262
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method


# virtual methods
.method public addBigrams(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 170
    .local v2, "length":I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->getMaxWordLength()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 188
    :goto_0
    return v1

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentWord()Lcom/android/inputmethod/latin/WordComposer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->isAutoCapitalized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 176
    :cond_1
    invoke-super {p0, p1, p2, v5}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addBigram(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, "freq":I
    const/16 v3, 0x7f

    if-le v1, v3, :cond_2

    const/16 v1, 0x7f

    .line 178
    :cond_2
    iget-object v4, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 179
    if-eq v1, v5, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    new-instance v5, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;

    invoke-direct {v5, p1, p2, v1}, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 182
    :cond_4
    :try_start_1
    new-instance v0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    .local v0, "bi":Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 184
    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public close()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->flushPendingWrites()V

    .line 160
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V

    .line 161
    return-void
.end method

.method public flushPendingWrites()V
    .locals 6

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/latin/UserBigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    iget-object v4, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mLocale:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;Ljava/util/HashSet;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    .line 195
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 12

    .prologue
    const/16 v11, 0x20

    .line 221
    const-string v7, "locale=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mLocale:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-direct {p0, v7, v8}, Lcom/android/inputmethod/latin/UserBigramDictionary;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 223
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 224
    const-string v7, "word1"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 225
    .local v4, "word1Index":I
    const-string v7, "word2"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 226
    .local v6, "word2Index":I
    const-string v7, "freq"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, "frequencyIndex":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 240
    .end local v2    # "frequencyIndex":I
    .end local v4    # "word1Index":I
    .end local v6    # "word2Index":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    return-void

    .line 228
    .restart local v2    # "frequencyIndex":I
    .restart local v4    # "word1Index":I
    .restart local v6    # "word2Index":I
    :cond_1
    :try_start_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "word1":Ljava/lang/String;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "word2":Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 233
    .local v1, "frequency":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v11, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v11, :cond_2

    .line 234
    invoke-super {p0, v3, v5, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)I

    .line 236
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 239
    .end local v1    # "frequency":I
    .end local v2    # "frequencyIndex":I
    .end local v3    # "word1":Ljava/lang/String;
    .end local v4    # "word1Index":I
    .end local v5    # "word2":Ljava/lang/String;
    .end local v6    # "word2Index":I
    :catchall_0
    move-exception v7

    .line 240
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 241
    throw v7
.end method

.method public setDatabaseDelete(I)V
    .locals 0
    .param p1, "deleteUserBigram"    # I

    .prologue
    .line 138
    sput p1, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDeleteUserBigrams:I

    .line 139
    return-void
.end method

.method public setDatabaseMax(I)V
    .locals 0
    .param p1, "maxUserBigram"    # I

    .prologue
    .line 134
    sput p1, Lcom/android/inputmethod/latin/UserBigramDictionary;->sMaxUserBigrams:I

    .line 135
    return-void
.end method

.method waitUntilUpdateDBDone()V
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sUpdatingDB:Z

    if-nez v0, :cond_0

    .line 214
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 210
    :cond_0
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
