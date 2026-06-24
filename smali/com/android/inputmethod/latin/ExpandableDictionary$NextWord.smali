.class Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NextWord"
.end annotation


# instance fields
.field private mFrequency:I

.field public final mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;I)V
    .locals 0
    .param p1, "word"    # Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .param p2, "frequency"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 86
    iput p2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 87
    return-void
.end method


# virtual methods
.method public addFrequency(I)I
    .locals 2
    .param p1, "add"    # I

    .prologue
    const/16 v1, 0xff

    .line 99
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 100
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 101
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    return v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    return v0
.end method

.method public setFrequency(I)I
    .locals 1
    .param p1, "freq"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 95
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    return v0
.end method
