.class Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;
.super Ljava/lang/Thread;
.source "CustomDitctionaryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processDelete(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

.field private final synthetic val$args:[Ljava/lang/String;

.field private final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Ljava/lang/String;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;->this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    iput-object p3, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;->val$args:[Ljava/lang/String;

    .line 258
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;->val$contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_ID=?"

    iget-object v3, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;->val$args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 261
    return-void
.end method
