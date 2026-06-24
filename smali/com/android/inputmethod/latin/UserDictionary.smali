.class public Lcom/android/inputmethod/latin/UserDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserDictionary.java"


# static fields
.field private static final INDEX_FREQUENCY:I = 0x2

.field private static final INDEX_WORD:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mLocale:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 29
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 30
    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 31
    const-string v2, "frequency"

    aput-object v2, v0, v1

    .line 28
    sput-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, "cres":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/inputmethod/latin/UserDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/UserDictionary$1;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionary()V

    .line 55
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->clearDictionary()V

    .line 126
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I

    move-result v1

    .line 127
    .local v1, "maxWordLength":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 140
    return-void

    .line 129
    :cond_1
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "word":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 133
    .local v0, "frequency":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 134
    invoke-super {p0, v2, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 136
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addWord(Ljava/lang/String;I)V
    .locals 4
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getRequiresReload()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionaryAsync()V

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lt v2, v3, :cond_1

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 95
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 96
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "word"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "frequency"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v2, "locale"

    iget-object v3, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "appid"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/inputmethod/latin/UserDictionary$2;

    const-string v3, "addWord"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/inputmethod/latin/UserDictionary$2;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 106
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/UserDictionary$2;->start()V

    .line 109
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/UserDictionary;->setRequiresReload(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/latin/ProximityInfo;)V
    .locals 1
    .param p1, "codes"    # Lcom/android/inputmethod/latin/WordComposer;
    .param p2, "callback"    # Lcom/android/inputmethod/latin/Dictionary$WordCallback;
    .param p3, "proximityInfo"    # Lcom/android/inputmethod/latin/ProximityInfo;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/latin/ProximityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 8

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(locale IS NULL) or (locale=?) or (locale like \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 69
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 73
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/UserDictionary;->addWords(Landroid/database/Cursor;)V

    .line 75
    :cond_0
    return-void
.end method
