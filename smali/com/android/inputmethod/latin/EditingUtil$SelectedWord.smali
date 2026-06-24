.class public Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
.super Ljava/lang/Object;
.source "EditingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/EditingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectedWord"
.end annotation


# instance fields
.field public final mEnd:I

.field public final mStart:I

.field public final mWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(IILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mStart:I

    .line 54
    iput p2, p0, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mEnd:I

    .line 55
    iput-object p3, p0, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    .line 56
    return-void
.end method
