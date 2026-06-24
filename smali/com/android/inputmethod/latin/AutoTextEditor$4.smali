.class Lcom/android/inputmethod/latin/AutoTextEditor$4;
.super Ljava/lang/Object;
.source "AutoTextEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/AutoTextEditor;->edit(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/AutoTextEditor;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/AutoTextEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/AutoTextEditor$4;->this$0:Lcom/android/inputmethod/latin/AutoTextEditor;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 174
    return-void
.end method
