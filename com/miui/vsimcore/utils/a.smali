.class public Lcom/miui/vsimcore/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[C

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "line.separator"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/vsimcore/utils/a;->a:Ljava/lang/String;

    const/16 v0, 0x40

    .line 9
    new-array v1, v0, [C

    sput-object v1, Lcom/miui/vsimcore/utils/a;->b:[C

    const/4 v1, 0x0

    const/16 v2, 0x41

    const/4 v3, 0x0

    :goto_12
    const/16 v4, 0x5a

    if-gt v2, v4, :cond_21

    .line 12
    sget-object v4, Lcom/miui/vsimcore/utils/a;->b:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_12

    :cond_21
    const/16 v2, 0x61

    :goto_23
    const/16 v4, 0x7a

    if-gt v2, v4, :cond_32

    .line 13
    sget-object v4, Lcom/miui/vsimcore/utils/a;->b:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_23

    :cond_32
    const/16 v2, 0x30

    :goto_34
    const/16 v4, 0x39

    if-gt v2, v4, :cond_43

    .line 14
    sget-object v4, Lcom/miui/vsimcore/utils/a;->b:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_34

    .line 15
    :cond_43
    sget-object v2, Lcom/miui/vsimcore/utils/a;->b:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2b

    aput-char v5, v2, v3

    sget-object v2, Lcom/miui/vsimcore/utils/a;->b:[C

    const/16 v3, 0x2f

    aput-char v3, v2, v4

    const/16 v2, 0x80

    .line 18
    new-array v2, v2, [B

    sput-object v2, Lcom/miui/vsimcore/utils/a;->c:[B

    const/4 v2, 0x0

    .line 20
    :goto_58
    sget-object v3, Lcom/miui/vsimcore/utils/a;->c:[B

    array-length v3, v3

    if-ge v2, v3, :cond_65

    sget-object v3, Lcom/miui/vsimcore/utils/a;->c:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_65
    :goto_65
    if-ge v1, v0, :cond_73

    .line 21
    sget-object v2, Lcom/miui/vsimcore/utils/a;->c:[B

    sget-object v3, Lcom/miui/vsimcore/utils/a;->b:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_73
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 30
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/miui/vsimcore/utils/a;->b([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 5

    .line 39
    array-length v0, p0

    sget-object v1, Lcom/miui/vsimcore/utils/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x4c

    invoke-static {p0, v2, v0, v3, v1}, Lcom/miui/vsimcore/utils/a;->a([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([BIIILjava/lang/String;)Ljava/lang/String;
    .registers 9

    mul-int/lit8 p3, p3, 0x3

    .line 51
    div-int/lit8 p3, p3, 0x4

    if-lez p3, :cond_39

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 53
    div-int/2addr v0, p3

    add-int/lit8 v1, p2, 0x2

    .line 54
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, p2, :cond_34

    sub-int v2, p2, v1

    .line 58
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, p1, v1

    .line 59
    invoke-static {p0, v3, v2}, Lcom/miui/vsimcore/utils/a;->a([BII)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    goto :goto_1e

    .line 62
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 52
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a([C)[B
    .registers 3

    .line 157
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/vsimcore/utils/a;->a([CII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([CII)[B
    .registers 12

    .line 169
    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_97

    :goto_4
    if-lez p2, :cond_13

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 170
    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_13

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_13
    mul-int/lit8 v0, p2, 0x3

    .line 171
    div-int/lit8 v0, v0, 0x4

    .line 172
    new-array v1, v0, [B

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_1b
    if-ge p1, p2, :cond_96

    add-int/lit8 v3, p1, 0x1

    .line 177
    aget-char p1, p0, p1

    add-int/lit8 v4, v3, 0x1

    .line 178
    aget-char v3, p0, v3

    const/16 v5, 0x41

    if-ge v4, p2, :cond_2e

    add-int/lit8 v6, v4, 0x1

    .line 179
    aget-char v4, p0, v4

    goto :goto_31

    :cond_2e
    move v6, v4

    const/16 v4, 0x41

    :goto_31
    if-ge v6, p2, :cond_3a

    add-int/lit8 v5, v6, 0x1

    .line 180
    aget-char v6, p0, v6

    move v8, v6

    move v6, v5

    move v5, v8

    :cond_3a
    const/16 v7, 0x7f

    if-gt p1, v7, :cond_8e

    if-gt v3, v7, :cond_8e

    if-gt v4, v7, :cond_8e

    if-gt v5, v7, :cond_8e

    .line 183
    sget-object v7, Lcom/miui/vsimcore/utils/a;->c:[B

    aget-byte p1, v7, p1

    .line 184
    sget-object v7, Lcom/miui/vsimcore/utils/a;->c:[B

    aget-byte v3, v7, v3

    .line 185
    sget-object v7, Lcom/miui/vsimcore/utils/a;->c:[B

    aget-byte v4, v7, v4

    .line 186
    sget-object v7, Lcom/miui/vsimcore/utils/a;->c:[B

    aget-byte v5, v7, v5

    if-ltz p1, :cond_86

    if-ltz v3, :cond_86

    if-ltz v4, :cond_86

    if-ltz v5, :cond_86

    shl-int/lit8 p1, p1, 0x2

    ushr-int/lit8 v7, v3, 0x4

    or-int/2addr p1, v7

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v7, v4, 0x2

    or-int/2addr v3, v7

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    int-to-byte p1, p1

    .line 192
    aput-byte p1, v1, v2

    if-ge v5, v0, :cond_7a

    add-int/lit8 p1, v5, 0x1

    int-to-byte v2, v3

    .line 193
    aput-byte v2, v1, v5

    goto :goto_7b

    :cond_7a
    move p1, v5

    :goto_7b
    if-ge p1, v0, :cond_83

    add-int/lit8 v2, p1, 0x1

    int-to-byte v3, v4

    .line 194
    aput-byte v3, v1, p1

    goto :goto_84

    :cond_83
    move v2, p1

    :goto_84
    move p1, v6

    goto :goto_1b

    .line 188
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal character in Base64 encoded data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal character in Base64 encoded data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_96
    return-object v1

    .line 169
    :cond_97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([BI)[C
    .registers 3

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0, p1}, Lcom/miui/vsimcore/utils/a;->a([BII)[C

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)[C
    .registers 13

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    .line 92
    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p2, 0x2

    .line 93
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 94
    new-array v1, v1, [C

    add-int/2addr p2, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge p1, p2, :cond_6c

    add-int/lit8 v4, p1, 0x1

    .line 99
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    if-ge v4, p2, :cond_22

    add-int/lit8 v5, v4, 0x1

    .line 100
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_24

    :cond_22
    move v5, v4

    const/4 v4, 0x0

    :goto_24
    if-ge v5, p2, :cond_2d

    add-int/lit8 v6, v5, 0x1

    .line 101
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    goto :goto_2f

    :cond_2d
    move v6, v5

    const/4 v5, 0x0

    :goto_2f
    ushr-int/lit8 v7, p1, 0x2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    ushr-int/lit8 v8, v4, 0x4

    or-int/2addr p1, v8

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v8, v5, 0x6

    or-int/2addr v4, v8

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v8, v3, 0x1

    .line 106
    sget-object v9, Lcom/miui/vsimcore/utils/a;->b:[C

    aget-char v7, v9, v7

    aput-char v7, v1, v3

    add-int/lit8 v3, v8, 0x1

    .line 107
    sget-object v7, Lcom/miui/vsimcore/utils/a;->b:[C

    aget-char p1, v7, p1

    aput-char p1, v1, v8

    const/16 p1, 0x3d

    if-ge v3, v0, :cond_5a

    .line 108
    sget-object v7, Lcom/miui/vsimcore/utils/a;->b:[C

    aget-char v4, v7, v4

    goto :goto_5c

    :cond_5a
    const/16 v4, 0x3d

    :goto_5c
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_66

    .line 109
    sget-object p1, Lcom/miui/vsimcore/utils/a;->b:[C

    aget-char p1, p1, v5

    :cond_66
    aput-char p1, v1, v3

    add-int/lit8 v3, v3, 0x1

    move p1, v6

    goto :goto_11

    :cond_6c
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 120
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/vsimcore/utils/a;->d(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static b([B)[C
    .registers 3

    .line 71
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/vsimcore/utils/a;->a([BII)[C

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)[B
    .registers 7

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 133
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 134
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_28

    const/16 v5, 0xd

    if-eq v4, v5, :cond_28

    const/16 v5, 0xa

    if-eq v4, v5, :cond_28

    const/16 v5, 0x9

    if-eq v4, v5, :cond_28

    add-int/lit8 v5, v3, 0x1

    .line 136
    aput-char v4, v0, v3

    move v3, v5

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 137
    :cond_2b
    invoke-static {v0, v1, v3}, Lcom/miui/vsimcore/utils/a;->a([CII)[B

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)[B
    .registers 1

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/miui/vsimcore/utils/a;->a([C)[B

    move-result-object p0

    return-object p0
.end method
