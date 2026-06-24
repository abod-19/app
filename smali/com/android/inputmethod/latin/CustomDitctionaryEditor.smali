.class public Lcom/android/inputmethod/latin/CustomDitctionaryEditor;
.super Landroid/app/ListActivity;
.source "CustomDitctionaryEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;
    }
.end annotation


# static fields
.field private static final ADD_ID:I = 0x2

.field private static final DELETE_ID:I = 0x4

.field private static final EDIT_ID:I = 0x3

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private constantsCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 51
    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 52
    const-string v2, "locale"

    aput-object v2, v0, v1

    .line 49
    sput-object v0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->PROJECTION:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processAdd(Lcom/android/inputmethod/latin/CustomDialogWrapper;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processEdit(Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V

    return-void
.end method

.method private add()V
    .locals 8

    .prologue
    .line 137
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 138
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "addView":Landroid/view/View;
    new-instance v4, Lcom/android/inputmethod/latin/CustomDialogWrapper;

    invoke-direct {v4, v0}, Lcom/android/inputmethod/latin/CustomDialogWrapper;-><init>(Landroid/view/View;)V

    .line 140
    .local v4, "wrapper":Lcom/android/inputmethod/latin/CustomDialogWrapper;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 141
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "input_language"

    const-string v6, "en"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "mSelectedLanguages":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d0133

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 144
    const v6, 0x7f0d008e

    .line 145
    new-instance v7, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$1;

    invoke-direct {v7, p0, v4}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$1;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;)V

    .line 144
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 149
    const v6, 0x7f0d008d

    .line 150
    new-instance v7, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$2;

    invoke-direct {v7, p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$2;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;)V

    .line 149
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 154
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 155
    iget-object v5, v4, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method private delete(J)V
    .locals 2
    .param p1, "rowId"    # J

    .prologue
    .line 212
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processDelete(J)V

    .line 224
    :cond_0
    return-void
.end method

.method private edit(J)V
    .locals 10
    .param p1, "rowId"    # J

    .prologue
    .line 160
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 161
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f030001

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "editView":Landroid/view/View;
    iget-object v7, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    const-string v8, "word"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 163
    .local v2, "keyCol":I
    iget-object v7, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    const-string v8, "locale"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 164
    .local v4, "valueCol":I
    iget-object v7, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "word":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "locale":Ljava/lang/String;
    new-instance v6, Lcom/android/inputmethod/latin/CustomDialogWrapper;

    invoke-direct {v6, v0}, Lcom/android/inputmethod/latin/CustomDialogWrapper;-><init>(Landroid/view/View;)V

    .line 168
    .local v6, "wrapper":Lcom/android/inputmethod/latin/CustomDialogWrapper;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d0134

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 169
    const v8, 0x7f0d008e

    .line 170
    new-instance v9, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;

    invoke-direct {v9, p0, v6, p1, p2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V

    .line 169
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 174
    const v8, 0x7f0d008d

    .line 175
    new-instance v9, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$4;

    invoke-direct {v9, p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$4;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;)V

    .line 174
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 179
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 180
    iget-object v7, v6, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v7, v6, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method private processAdd(Lcom/android/inputmethod/latin/CustomDialogWrapper;)V
    .locals 4
    .param p1, "wrapper"    # Lcom/android/inputmethod/latin/CustomDialogWrapper;

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getWord()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 234
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "word"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v2, "frequency"

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getLocale()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    const-string v2, "locale"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 244
    :goto_1
    const-string v2, "appid"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;

    const-string v3, "addWord"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 251
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;->start()V

    goto :goto_0

    .line 242
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_1
    const-string v2, "locale"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private processDelete(J)V
    .locals 4
    .param p1, "rowId"    # J

    .prologue
    .line 255
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 257
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 258
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;

    const-string v3, "deleteWord"

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Ljava/lang/String;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;->start()V

    .line 264
    return-void
.end method

.method private processEdit(Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V
    .locals 6
    .param p1, "wrapper"    # Lcom/android/inputmethod/latin/CustomDialogWrapper;
    .param p2, "rowId"    # J

    .prologue
    const/4 v2, 0x0

    .line 185
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 186
    .local v5, "args":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getWord()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 192
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "word"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "frequency"

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getLocale()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "locale"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 201
    :goto_1
    const-string v0, "appid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 204
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;

    const-string v2, "editWord"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;->start()V

    goto :goto_0

    .line 200
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    :cond_1
    const-string v0, "locale"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 121
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 120
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 123
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->delete(J)V

    goto :goto_0

    .line 128
    .end local v0    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 129
    .restart local v0    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->edit(J)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->PROJECTION:[Ljava/lang/String;

    const-string v5, "word"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    .line 61
    new-instance v1, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;

    const v4, 0x7f03001e

    .line 62
    iget-object v5, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    new-array v6, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "word"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    .line 63
    const-string v3, "locale"

    aput-object v3, v6, v2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    move-object v2, p0

    move-object v3, p0

    .line 61
    invoke-direct/range {v1 .. v7}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 65
    .local v1, "adapter":Landroid/widget/ListAdapter;
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->setContentView(I)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->registerForContextMenu(Landroid/view/View;)V

    .line 69
    return-void

    .line 63
    :array_0
    .array-data 4
        0x7f080007
        0x7f080008
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 110
    const/4 v0, 0x4

    const-string v1, "\u0645\u0633\u062d"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 111
    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 112
    const/4 v0, 0x3

    const-string v1, "\u062a\u062d\u0631\u064a\u0631"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 113
    const/16 v1, 0x65

    .line 112
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x2

    const-string v1, "\u0627\u0636\u0627\u0641\u0629"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 91
    const v1, 0x1080033

    .line 90
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 91
    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 93
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 86
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->add()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 74
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 80
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 81
    return-void
.end method
