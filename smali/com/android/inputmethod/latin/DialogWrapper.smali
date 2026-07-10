.class Lcom/android/inputmethod/latin/DialogWrapper;
.super Ljava/lang/Object;
.source "AutoTextEditor.java"


# instance fields
.field base:Landroid/view/View;

.field keyField:Landroid/widget/EditText;

.field valueField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "base"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->keyField:Landroid/widget/EditText;

    .line 303
    iput-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->valueField:Landroid/widget/EditText;

    .line 304
    iput-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->base:Landroid/view/View;

    .line 307
    iput-object p1, p0, Lcom/android/inputmethod/latin/DialogWrapper;->base:Landroid/view/View;

    .line 308
    const v0, 0x7f080005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->keyField:Landroid/widget/EditText;

    .line 309
    const v0, 0x7f080006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->valueField:Landroid/widget/EditText;

    .line 310
    return-void
.end method

.method private getKeyField()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->keyField:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->base:Landroid/view/View;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->keyField:Landroid/widget/EditText;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->keyField:Landroid/widget/EditText;

    return-object v0
.end method

.method private getValueField()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->valueField:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->base:Landroid/view/View;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->valueField:Landroid/widget/EditText;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogWrapper;->valueField:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DialogWrapper;->getKeyField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DialogWrapper;->getValueField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
