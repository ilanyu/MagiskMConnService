.class Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mime"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->b:[B

    .line 22
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->c:[B

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->b:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public a([B)Z
    .registers 7

    .line 46
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->b:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_13

    .line 47
    aget-byte v3, p1, v2

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->b:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_10

    return v1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->c:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public b([B)Z
    .registers 8

    .line 55
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->c:[B

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    .line 56
    aget-byte v4, p1, v3

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->c:[B

    aget-byte v5, v5, v1

    if-eq v4, v5, :cond_13

    return v2

    :cond_13
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->b:[B

    array-length v0, v0

    return v0
.end method

.method public e()I
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->c:[B

    array-length v0, v0

    return v0
.end method
