.class public Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;
.super Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;
.source "DictionaryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedWordAlternatives"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

.field private word:Lcom/android/inputmethod/latin/WordComposer;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;-><init>()V

    .line 468
    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 0
    .param p2, "chosenWord"    # Ljava/lang/CharSequence;
    .param p3, "wordComposer"    # Lcom/android/inputmethod/latin/WordComposer;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 472
    invoke-direct {p0, p2}, Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;-><init>(Ljava/lang/CharSequence;)V

    .line 473
    iput-object p3, p0, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    .line 474
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;)Lcom/android/inputmethod/latin/WordComposer;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method


# virtual methods
.method public getAlternatives()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$6(Lcom/android/inputmethod/latin/DictionaryEditor;Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
