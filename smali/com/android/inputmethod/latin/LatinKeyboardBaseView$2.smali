.class Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;
.super Ljava/lang/Object;
.source "LatinKeyboardBaseView.java"

# interfaces
.implements Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->inflateMiniKeyboardContainer(Landroid/inputmethodservice/Keyboard$Key;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    .line 1391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$7(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onCancel()V

    .line 1406
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$8(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    .line 1407
    return-void
.end method

.method public onKey(I[III)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$7(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 1396
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$8(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    .line 1397
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$7(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 1423
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$7(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 1427
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$7(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1401
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$8(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    .line 1402
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 1419
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 1410
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 1413
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 1416
    return-void
.end method
