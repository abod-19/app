.class public Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;
.super Ljava/lang/Object;
.source "AutoTextDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AutoTextDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoTextEntry"
.end annotation


# instance fields
.field mKey:Ljava/lang/String;

.field mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/inputmethod/latin/AutoTextDictionary;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/AutoTextDictionary;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;->this$0:Lcom/android/inputmethod/latin/AutoTextDictionary;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;->mKey:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/android/inputmethod/latin/AutoTextDictionary$AutoTextEntry;->mValue:Ljava/lang/String;

    .line 39
    return-void
.end method
