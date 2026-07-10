.class public Lcom/android/inputmethod/latin/SuggestionSpanUtils;
.super Ljava/lang/Object;
.source "SuggestionSpanUtils.java"


# static fields
.field public static final ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"

.field private static final CLASS_SuggestionSpan:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTO_CORRECTION:I = 0x4

.field private static final INPUT_TYPE_SuggestionSpan:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final SUGGESTION_MAX_SIZE:I = 0x5

.field public static final SUGGESTION_SPAN_IS_SUPPORTED:Z

.field public static final SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"

.field public static final SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"

.field public static final SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    const-class v2, Lcom/android/inputmethod/latin/SuggestionSpanUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->TAG:Ljava/lang/String;

    .line 48
    const-string v2, "android.text.style.SuggestionSpan"

    invoke-static {v2}, Lcom/android/inputmethod/latin/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 47
    sput-object v2, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    .line 49
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    .line 50
    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v1

    const-class v3, Ljava/util/Locale;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 49
    sput-object v2, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->INPUT_TYPE_SuggestionSpan:[Ljava/lang/Class;

    .line 52
    sget-object v2, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    sget-object v3, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->INPUT_TYPE_SuggestionSpan:[Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/CompatUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 51
    sput-object v2, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    .line 55
    sget-object v2, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_0

    .line 54
    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->SUGGESTION_SPAN_IS_SUPPORTED:Z

    .line 34
    return-void

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_1

    .line 75
    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 63
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 64
    check-cast v3, Landroid/text/Spannable;

    move-object v1, v3

    .line 66
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_1
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v5

    const/4 v3, 0x2

    new-array v4, v5, [Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 67
    const-class v3, Lcom/android/inputmethod/latin/SuggestionSpanPickedNotificationReceiver;

    aput-object v3, v0, v6

    .line 68
    .local v0, "args":[Ljava/lang/Object;
    sget-object v3, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    invoke-static {v3, v0}, Lcom/android/inputmethod/latin/CompatUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, "ss":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 70
    sget-object v3, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->TAG:Ljava/lang/String;

    const-string v4, "Suggestion span was not created."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "ss":Ljava/lang/Object;
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 73
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v1    # "spannable":Landroid/text/Spannable;
    .restart local v2    # "ss":Ljava/lang/Object;
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 74
    const/16 v4, 0x121

    .line 73
    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v1

    .line 75
    goto :goto_0
.end method

.method public static getTextWithSuggestionSpan(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pickedWord"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p2, "suggestedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_0

    .line 81
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 111
    .end local p1    # "pickedWord":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 87
    .restart local p1    # "pickedWord":Ljava/lang/CharSequence;
    :cond_1
    instance-of v6, p1, Landroid/text/Spannable;

    if-eqz v6, :cond_3

    move-object v2, p1

    .line 88
    check-cast v2, Landroid/text/Spannable;

    .line 92
    .local v2, "spannable":Landroid/text/Spannable;
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v4, "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_4

    .line 104
    :cond_2
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v8

    const/4 v6, 0x2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x4

    .line 105
    const-class v7, Lcom/android/inputmethod/latin/SuggestionSpanPickedNotificationReceiver;

    aput-object v7, v0, v6

    .line 106
    .local v0, "args":[Ljava/lang/Object;
    sget-object v6, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    invoke-static {v6, v0}, Lcom/android/inputmethod/latin/CompatUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 107
    .local v3, "ss":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 110
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-interface {v2, v3, v8, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v2

    .line 111
    goto :goto_0

    .line 90
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "ss":Ljava/lang/Object;
    .end local v4    # "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v2    # "spannable":Landroid/text/Spannable;
    goto :goto_1

    .line 94
    .restart local v1    # "i":I
    .restart local v4    # "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v7, :cond_2

    .line 97
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 98
    .local v5, "word":Ljava/lang/CharSequence;
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 99
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
