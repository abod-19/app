.class public Lcom/android/inputmethod/latin/AutoTextDictionary;
.super Ljava/lang/Object;
.source "AutoTextDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;,
        Lcom/android/inputmethod/latin/AutoTextDictionary$MyContentObserver;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "autotext.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static mAutoTextEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private constantsCursor:Landroid/database/Cursor;

.field private db:Lcom/android/inputmethod/latin/DatabaseHelper;

.field private mIme:Lcom/android/inputmethod/latin/DictionaryEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/AutoTextDictionary;->mAutoTextEntry:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ime"    # Lcom/android/inputmethod/latin/DictionaryEditor;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    .line 46
    iput-object v2, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    .line 51
    new-instance v0, Lcom/android/inputmethod/latin/DatabaseHelper;

    const-string v1, "autotext.db"

    invoke-direct {v0, p1, v1}, Lcom/android/inputmethod/latin/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    .line 53
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 54
    const-string v1, "SELECT _ID, key, value FROM autotext ORDER BY key"

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    new-instance v1, Lcom/android/inputmethod/latin/AutoTextDictionary$MyContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/inputmethod/latin/AutoTextDictionary$MyContentObserver;-><init>(Lcom/android/inputmethod/latin/AutoTextDictionary;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 59
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AutoTextDictionary;->loadDBtoArrayList()V

    .line 60
    return-void
.end method

.method private loadDBtoArrayList()V
    .locals 5

    .prologue
    .line 66
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    return-void

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    const-string v4, "key"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, "keyCol":I
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    const-string v4, "value"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 71
    .local v2, "valueCol":I
    new-instance v0, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;

    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;-><init>(Lcom/android/inputmethod/latin/AutoTextDictionary;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v0, "atext_ent":Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;
    sget-object v3, Lcom/android/inputmethod/latin/AutoTextDictionary;->mAutoTextEntry:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private reloadList()V
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/inputmethod/latin/AutoTextEditor;->DataBaseChanged:Z

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/inputmethod/latin/AutoTextDictionary;->mAutoTextEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 108
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AutoTextDictionary;->loadDBtoArrayList()V

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/latin/AutoTextEditor;->DataBaseChanged:Z

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoTextDictionary;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/DatabaseHelper;->close()V

    .line 99
    sget-object v0, Lcom/android/inputmethod/latin/AutoTextDictionary;->mAutoTextEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    return-void
.end method

.method public getWords(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "composer"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AutoTextDictionary;->reloadList()V

    .line 130
    sget-object v3, Lcom/android/inputmethod/latin/AutoTextDictionary;->mAutoTextEntry:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 131
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "words":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 139
    return-object v2

    .line 135
    :cond_0
    sget-object v3, Lcom/android/inputmethod/latin/AutoTextDictionary;->mAutoTextEntry:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;

    iget-object v3, v3, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    sget-object v3, Lcom/android/inputmethod/latin/AutoTextDictionary;->mAutoTextEntry:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;

    iget-object v3, v3, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AutoTextDictionary;->reloadList()V

    .line 117
    sget-object v2, Lcom/android/inputmethod/latin/AutoTextDictionary;->mAutoTextEntry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 119
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 124
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 121
    :cond_0
    sget-object v2, Lcom/android/inputmethod/latin/AutoTextDictionary;->mAutoTextEntry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;

    iget-object v2, v2, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const/4 v2, 0x1

    goto :goto_1

    .line 119
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
