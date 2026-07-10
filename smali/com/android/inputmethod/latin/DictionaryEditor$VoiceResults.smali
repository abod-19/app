.class Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceResults"
.end annotation


# instance fields
.field alternatives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/inputmethod/latin/DictionaryEditor;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;)V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    return-void
.end method
