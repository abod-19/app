.class Lcom/android/inputmethod/latin/CustomDialogWrapper;
.super Ljava/lang/Object;
.source "CustomDitctionaryEditor.java"


# instance fields
.field base:Landroid/view/View;

.field localeField:Landroid/widget/EditText;

.field wordField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "base"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    .line 346
    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    .line 347
    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->base:Landroid/view/View;

    .line 350
    iput-object p1, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->base:Landroid/view/View;

    .line 351
    const v0, 0x7f080007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    .line 352
    const v0, 0x7f080008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    .line 353
    return-void
.end method

.method private getlocaleField()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->base:Landroid/view/View;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    return-object v0
.end method

.method private getwordField()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->base:Landroid/view/View;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getlocaleField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getwordField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
