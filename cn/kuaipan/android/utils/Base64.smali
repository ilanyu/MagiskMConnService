.class public Lcn/kuaipan/android/utils/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/utils/Base64$Encoder;,
        Lcn/kuaipan/android/utils/Base64$Decoder;,
        Lcn/kuaipan/android/utils/Base64$Coder;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x8

.field public static final f:I = 0x10

.field static final synthetic g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcn/kuaipan/android/utils/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcn/kuaipan/android/utils/Base64;->g:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)[B
    .registers 2

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/kuaipan/android/utils/Base64;->a([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BI)[B
    .registers 4

    .line 127
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcn/kuaipan/android/utils/Base64;->a([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BIII)[B
    .registers 6

    .line 147
    new-instance v0, Lcn/kuaipan/android/utils/Base64$Decoder;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcn/kuaipan/android/utils/Base64$Decoder;-><init>(I[B)V

    const/4 p3, 0x1

    .line 149
    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/kuaipan/android/utils/Base64$Decoder;->a([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 154
    iget p0, v0, Lcn/kuaipan/android/utils/Base64$Decoder;->b:I

    iget-object p1, v0, Lcn/kuaipan/android/utils/Base64$Decoder;->a:[B

    array-length p1, p1

    if-ne p0, p1, :cond_1c

    .line 155
    iget-object p0, v0, Lcn/kuaipan/android/utils/Base64$Decoder;->a:[B

    return-object p0

    .line 160
    :cond_1c
    iget p0, v0, Lcn/kuaipan/android/utils/Base64$Decoder;->b:I

    new-array p0, p0, [B

    .line 161
    iget-object p1, v0, Lcn/kuaipan/android/utils/Base64$Decoder;->a:[B

    iget p2, v0, Lcn/kuaipan/android/utils/Base64$Decoder;->b:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 150
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BI)Ljava/lang/String;
    .registers 3

    .line 437
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/kuaipan/android/utils/Base64;->c([BI)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    .line 440
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static b([BIII)Ljava/lang/String;
    .registers 5

    .line 456
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcn/kuaipan/android/utils/Base64;->c([BIII)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    .line 459
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static c([BI)[B
    .registers 4

    .line 472
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcn/kuaipan/android/utils/Base64;->c([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static c([BIII)[B
    .registers 8

    .line 486
    new-instance v0, Lcn/kuaipan/android/utils/Base64$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcn/kuaipan/android/utils/Base64$Encoder;-><init>(I[B)V

    .line 489
    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    .line 492
    iget-boolean v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->e:Z

    if-eqz v1, :cond_15

    .line 493
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_20

    add-int/lit8 p3, p3, 0x4

    goto :goto_20

    .line 497
    :cond_15
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_50

    goto :goto_20

    :pswitch_1b
    add-int/lit8 p3, p3, 0x3

    goto :goto_20

    :pswitch_1e
    add-int/lit8 p3, p3, 0x2

    .line 510
    :cond_20
    :goto_20
    :pswitch_20
    iget-boolean v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->f:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    if-lez p2, :cond_36

    add-int/lit8 v1, p2, -0x1

    .line 511
    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v2

    iget-boolean v3, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->g:Z

    if-eqz v3, :cond_32

    const/4 v3, 0x2

    goto :goto_33

    :cond_32
    const/4 v3, 0x1

    :goto_33
    mul-int v1, v1, v3

    add-int/2addr p3, v1

    .line 514
    :cond_36
    new-array v1, p3, [B

    iput-object v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->a:[B

    .line 515
    invoke-virtual {v0, p0, p1, p2, v2}, Lcn/kuaipan/android/utils/Base64$Encoder;->a([BIIZ)Z

    .line 517
    sget-boolean p0, Lcn/kuaipan/android/utils/Base64;->g:Z

    if-nez p0, :cond_4c

    iget p0, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->b:I

    if-ne p0, p3, :cond_46

    goto :goto_4c

    :cond_46
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 519
    :cond_4c
    :goto_4c
    iget-object p0, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->a:[B

    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method
