.class Lcom/android/inputmethod/latin/AutoTextDictionary$MyContentObserver;
.super Landroid/database/DataSetObserver;
.source "AutoTextDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AutoTextDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/AutoTextDictionary;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/AutoTextDictionary;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/inputmethod/latin/AutoTextDictionary$MyContentObserver;->this$0:Lcom/android/inputmethod/latin/AutoTextDictionary;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 93
    return-void
.end method
