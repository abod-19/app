.class public Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AutoTextEditor.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AutoTextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoTextCursorAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private layout:I

.field final synthetic this$0:Lcom/android/inputmethod/latin/AutoTextEditor;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/AutoTextEditor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;->this$0:Lcom/android/inputmethod/latin/AutoTextEditor;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 231
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 232
    iput-object p2, p0, Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;->context:Landroid/content/Context;

    .line 233
    iput p3, p0, Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;->layout:I

    .line 234
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 263
    const-string v4, "key"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 265
    .local v0, "keyCol":I
    const-string v4, "value"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 267
    .local v3, "valueCol":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 268
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 267
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "string":Ljava/lang/String;
    const v4, 0x7f080005

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 274
    .local v1, "name_text":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 241
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 242
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v7, p0, Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;->layout:I

    const/4 v8, 0x0

    invoke-virtual {v1, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 244
    .local v5, "v":Landroid/view/View;
    const-string v7, "key"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 245
    .local v2, "keyCol":I
    const-string v7, "value"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 247
    .local v6, "valueCol":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "string":Ljava/lang/String;
    const v7, 0x7f080005

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 253
    .local v3, "name_text":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    return-object v5
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    .line 285
    :cond_0
    const/4 v6, 0x0

    .line 286
    .local v6, "buffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 287
    .local v4, "args":[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .restart local v6    # "buffer":Ljava/lang/StringBuilder;
    const-string v0, "UPPER("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v0, "key"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v0, ") GLOB ?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "args":[Ljava/lang/String;
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 294
    .restart local v4    # "args":[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    .line 295
    if-nez v6, :cond_2

    move-object v3, v2

    .line 296
    :goto_1
    const-string v5, "key ASC"

    .line 294
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
