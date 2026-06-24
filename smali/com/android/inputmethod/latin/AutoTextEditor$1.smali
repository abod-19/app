.class Lcom/android/inputmethod/latin/AutoTextEditor$1;
.super Ljava/lang/Object;
.source "AutoTextEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/AutoTextEditor;->add()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/AutoTextEditor;

.field private final synthetic val$wrapper:Lcom/android/inputmethod/latin/DialogWrapper;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/AutoTextEditor;Lcom/android/inputmethod/latin/DialogWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/AutoTextEditor$1;->this$0:Lcom/android/inputmethod/latin/AutoTextEditor;

    iput-object p2, p0, Lcom/android/inputmethod/latin/AutoTextEditor$1;->val$wrapper:Lcom/android/inputmethod/latin/DialogWrapper;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoTextEditor$1;->this$0:Lcom/android/inputmethod/latin/AutoTextEditor;

    iget-object v1, p0, Lcom/android/inputmethod/latin/AutoTextEditor$1;->val$wrapper:Lcom/android/inputmethod/latin/DialogWrapper;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/AutoTextEditor;->access$0(Lcom/android/inputmethod/latin/AutoTextEditor;Lcom/android/inputmethod/latin/DialogWrapper;)V

    .line 146
    return-void
.end method
