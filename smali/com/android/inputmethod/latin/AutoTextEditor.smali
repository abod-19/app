.class public Lcom/android/inputmethod/latin/AutoTextEditor;
.super Landroid/app/ListActivity;
.source "AutoTextEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;
    }
.end annotation


# static fields
.field private static final ADD_ID:I = 0x2

.field private static final DATABASE_NAME:Ljava/lang/String; = "autotext.db"

.field private static final DELETE_ID:I = 0x4

.field public static DataBaseChanged:Z = false

.field private static final EDIT_ID:I = 0x3


# instance fields
.field private constantsCursor:Landroid/database/Cursor;

.field private db:Lcom/android/inputmethod/latin/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/latin/AutoTextEditor;->DataBaseChanged:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    .line 45
    iput-object v0, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/AutoTextEditor;Lcom/android/inputmethod/latin/DialogWrapper;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/AutoTextEditor;->processAdd(Lcom/android/inputmethod/latin/DialogWrapper;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/AutoTextEditor;Lcom/android/inputmethod/latin/DialogWrapper;J)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/AutoTextEditor;->processEdit(Lcom/android/inputmethod/latin/DialogWrapper;J)V

    return-void
.end method

.method private add()V
    .locals 6

    .prologue
    .line 137
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 138
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f030000

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "addView":Landroid/view/View;
    new-instance v2, Lcom/android/inputmethod/latin/DialogWrapper;

    invoke-direct {v2, v0}, Lcom/android/inputmethod/latin/DialogWrapper;-><init>(Landroid/view/View;)V

    .line 141
    .local v2, "wrapper":Lcom/android/inputmethod/latin/DialogWrapper;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0133

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 142
    const v4, 0x7f0d008e

    .line 143
    new-instance v5, Lcom/android/inputmethod/latin/AutoTextEditor$1;

    invoke-direct {v5, p0, v2}, Lcom/android/inputmethod/latin/AutoTextEditor$1;-><init>(Lcom/android/inputmethod/latin/AutoTextEditor;Lcom/android/inputmethod/latin/DialogWrapper;)V

    .line 142
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 147
    const v4, 0x7f0d008d

    .line 148
    new-instance v5, Lcom/android/inputmethod/latin/AutoTextEditor$2;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/latin/AutoTextEditor$2;-><init>(Lcom/android/inputmethod/latin/AutoTextEditor;)V

    .line 147
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 153
    return-void
.end method

.method private delete(J)V
    .locals 2
    .param p1, "rowId"    # J

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/AutoTextEditor;->processDelete(J)V

    .line 203
    :cond_0
    return-void
.end method

.method private edit(J)V
    .locals 10
    .param p1, "rowId"    # J

    .prologue
    .line 156
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 157
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/high16 v7, 0x7f030000

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "editView":Landroid/view/View;
    iget-object v7, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    const-string v8, "key"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 159
    .local v3, "keyCol":I
    iget-object v7, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    const-string v8, "value"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 160
    .local v5, "valueCol":I
    iget-object v7, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "value":Ljava/lang/String;
    new-instance v6, Lcom/android/inputmethod/latin/DialogWrapper;

    invoke-direct {v6, v0}, Lcom/android/inputmethod/latin/DialogWrapper;-><init>(Landroid/view/View;)V

    .line 164
    .local v6, "wrapper":Lcom/android/inputmethod/latin/DialogWrapper;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d0134

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 165
    const v8, 0x7f0d008e

    .line 166
    new-instance v9, Lcom/android/inputmethod/latin/AutoTextEditor$3;

    invoke-direct {v9, p0, v6, p1, p2}, Lcom/android/inputmethod/latin/AutoTextEditor$3;-><init>(Lcom/android/inputmethod/latin/AutoTextEditor;Lcom/android/inputmethod/latin/DialogWrapper;J)V

    .line 165
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 170
    const v8, 0x7f0d008d

    .line 171
    new-instance v9, Lcom/android/inputmethod/latin/AutoTextEditor$4;

    invoke-direct {v9, p0}, Lcom/android/inputmethod/latin/AutoTextEditor$4;-><init>(Lcom/android/inputmethod/latin/AutoTextEditor;)V

    .line 170
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 175
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 176
    iget-object v7, v6, Lcom/android/inputmethod/latin/DialogWrapper;->keyField:Landroid/widget/EditText;

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v7, v6, Lcom/android/inputmethod/latin/DialogWrapper;->valueField:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method private processAdd(Lcom/android/inputmethod/latin/DialogWrapper;)V
    .locals 4
    .param p1, "wrapper"    # Lcom/android/inputmethod/latin/DialogWrapper;

    .prologue
    .line 206
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 208
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/DialogWrapper;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "value"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/DialogWrapper;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "autotext"

    const-string v3, "key"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 212
    iget-object v1, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 213
    return-void
.end method

.method private processDelete(J)V
    .locals 4
    .param p1, "rowId"    # J

    .prologue
    .line 216
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 218
    .local v0, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "autotext"

    const-string v3, "_ID=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 220
    return-void
.end method

.method private processEdit(Lcom/android/inputmethod/latin/DialogWrapper;J)V
    .locals 5
    .param p1, "wrapper"    # Lcom/android/inputmethod/latin/DialogWrapper;
    .param p2, "rowId"    # J

    .prologue
    .line 181
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 182
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "key"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/DialogWrapper;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "value"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/DialogWrapper;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "autotext"

    const-string v4, "_ID=?"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 188
    return-void
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

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/AutoTextEditor;->delete(J)V

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

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/AutoTextEditor;->edit(J)V

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
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    .line 52
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v1, Lcom/android/inputmethod/latin/DatabaseHelper;

    const-string v2, "autotext.db"

    invoke-direct {v1, p0, v2}, Lcom/android/inputmethod/latin/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    .line 55
    iget-object v1, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 56
    const-string v2, "SELECT _ID, key, value FROM autotext ORDER BY key"

    const/4 v3, 0x0

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    .line 57
    new-instance v0, Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;

    const v3, 0x7f03001e

    .line 58
    iget-object v4, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    .line 59
    const-string v2, "value"

    aput-object v2, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/AutoTextEditor$AutoTextCursorAdapter;-><init>(Lcom/android/inputmethod/latin/AutoTextEditor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 61
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/AutoTextEditor;->setContentView(I)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/AutoTextEditor;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoTextEditor;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/AutoTextEditor;->registerForContextMenu(Landroid/view/View;)V

    .line 65
    return-void

    .line 59
    :array_0
    .array-data 4
        0x7f080005
        0x7f080006
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
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->db:Lcom/android/inputmethod/latin/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/DatabaseHelper;->close()V

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
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AutoTextEditor;->add()V

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
    .line 69
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/inputmethod/latin/AutoTextEditor;->DataBaseChanged:Z

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoTextEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 77
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 78
    return-void
.end method
