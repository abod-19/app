.class Lcom/android/inputmethod/voice/RecognitionView$2;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->showInitializing()V
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
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$2;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$2;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/RecognitionView;->access$2(Lcom/android/inputmethod/voice/RecognitionView;I)V

    .line 138
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$2;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$2;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v1}, Lcom/android/inputmethod/voice/RecognitionView;->access$3(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView$2;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v2}, Lcom/android/inputmethod/voice/RecognitionView;->access$4(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView$2;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-static {v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$3(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d008d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 138
    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$5(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
