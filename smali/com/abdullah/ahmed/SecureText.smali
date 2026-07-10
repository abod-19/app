.class public Lcom/abdullah/ahmed/SecureText;
.super Ljava/lang/Object;
.source "SecureText.smali"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "bt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "g9mD0ILyg9KC64L1eoPaerna3ovNgtWD2oLyg9KC9SYkgv2D3oPbgvSD34P7Yw=="

    goto :goto_0

    :cond_0
    const-string v0, "ds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Hj8semB6qsXd5KrF3fC42f4bOD4vNjY7MnQ="

    goto :goto_0

    :cond_1
    const-string v0, "dr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gvaD34PQguN6gv2D3oL3g9iD0oPYeoPfgveD24PSguKC83qD3oL1g9B6JnqC44LygvWC/YPeg96D3XqC/YL3g9+C9Xo="

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/SecureText;->x([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string p0, "UTF-8"

    invoke-direct {v1, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static x([B)[B
    .locals 4

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    xor-int/lit8 v3, v3, 0x5a

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
