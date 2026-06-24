.class public Lcom/android/inputmethod/latin/DatabaseHelper$AutoTextEntry;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoTextEntry"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/inputmethod/latin/DatabaseHelper;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/DatabaseHelper;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/inputmethod/latin/DatabaseHelper$AutoTextEntry;->this$0:Lcom/android/inputmethod/latin/DatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
