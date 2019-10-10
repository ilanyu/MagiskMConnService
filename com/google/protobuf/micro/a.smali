.class public final Lcom/google/protobuf/micro/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/micro/a;


# instance fields
.field private final b:[B

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 77
    new-instance v0, Lcom/google/protobuf/micro/a;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/micro/a;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lcom/google/protobuf/micro/a;->c:I

    .line 45
    iput-object p1, p0, Lcom/google/protobuf/micro/a;->b:[B

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/protobuf/micro/a;
    .registers 3

    .line 111
    :try_start_0
    new-instance v0, Lcom/google/protobuf/micro/a;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/micro/a;-><init>([B)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 113
    :catch_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 not supported?"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/micro/a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/google/protobuf/micro/a;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/micro/a;-><init>([B)V

    return-object v0
.end method

.method public static a([B)Lcom/google/protobuf/micro/a;
    .registers 3

    .line 93
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/micro/a;->a([BII)Lcom/google/protobuf/micro/a;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/google/protobuf/micro/a;
    .registers 5

    .line 84
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 85
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    new-instance p0, Lcom/google/protobuf/micro/a;

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/a;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public a(I)B
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/google/protobuf/micro/a;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public a()I
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/protobuf/micro/a;->b:[B

    array-length v0, v0

    return v0
.end method

.method public a([BI)V
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/google/protobuf/micro/a;->b:[B

    iget-object v1, p0, Lcom/google/protobuf/micro/a;->b:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public a([BIII)V
    .registers 6

    .line 141
    iget-object v0, p0, Lcom/google/protobuf/micro/a;->b:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/micro/a;->b:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/protobuf/micro/a;->b:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public c()[B
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/google/protobuf/micro/a;->b:[B

    array-length v0, v0

    .line 149
    new-array v1, v0, [B

    .line 150
    iget-object v2, p0, Lcom/google/protobuf/micro/a;->b:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public d()Ljava/lang/String;
    .registers 4

    .line 168
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/micro/a;->b:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 170
    :catch_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 183
    :cond_4
    instance-of v1, p1, Lcom/google/protobuf/micro/a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 187
    :cond_a
    check-cast p1, Lcom/google/protobuf/micro/a;

    .line 188
    iget-object v1, p0, Lcom/google/protobuf/micro/a;->b:[B

    array-length v1, v1

    .line 189
    iget-object v3, p1, Lcom/google/protobuf/micro/a;->b:[B

    array-length v3, v3

    if-eq v1, v3, :cond_15

    return v2

    .line 193
    :cond_15
    iget-object v3, p0, Lcom/google/protobuf/micro/a;->b:[B

    .line 194
    iget-object p1, p1, Lcom/google/protobuf/micro/a;->b:[B

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v1, :cond_26

    .line 196
    aget-byte v5, v3, v4

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_23

    return v2

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_26
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 208
    iget v0, p0, Lcom/google/protobuf/micro/a;->c:I

    if-nez v0, :cond_1c

    .line 211
    iget-object v0, p0, Lcom/google/protobuf/micro/a;->b:[B

    .line 212
    iget-object v1, p0, Lcom/google/protobuf/micro/a;->b:[B

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v1

    :goto_b
    if-ge v2, v1, :cond_15

    mul-int/lit8 v3, v3, 0x1f

    .line 216
    aget-byte v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    if-nez v3, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    move v0, v3

    .line 222
    :goto_1a
    iput v0, p0, Lcom/google/protobuf/micro/a;->c:I

    :cond_1c
    return v0
.end method
