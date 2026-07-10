.class Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;
.super Ljava/lang/Object;
.source "CustomDitctionaryEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->edit(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

.field private final synthetic val$rowId:J

.field private final synthetic val$wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    iput-object p2, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->val$wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;

    iput-wide p3, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->val$rowId:J

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    iget-object v1, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->val$wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;

    iget-wide v2, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->val$rowId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->access$1(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V

    .line 173
    return-void
.end method
