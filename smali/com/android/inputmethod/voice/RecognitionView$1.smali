.class Lcom/android/inputmethod/voice/RecognitionView$1;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->restoreState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/RecognitionView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/RecognitionView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v0}, Lcom/android/inputmethod/voice/RecognitionView;->access$0(Lcom/android/inputmethod/voice/RecognitionView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v0}, Lcom/android/inputmethod/voice/RecognitionView;->access$1(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v0}, Lcom/android/inputmethod/voice/RecognitionView;->access$1(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 130
    :cond_0
    return-void
.end method
