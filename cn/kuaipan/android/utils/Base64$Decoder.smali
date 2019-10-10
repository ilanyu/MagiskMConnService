.class Lcn/kuaipan/android/utils/Base64$Decoder;
.super Lcn/kuaipan/android/utils/Base64$Coder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final c:[I

.field private static final d:[I

.field private static final e:I = -0x1

.field private static final f:I = -0x2


# instance fields
.field private g:I

.field private h:I

.field private final i:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x100

    .line 170
    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Lcn/kuaipan/android/utils/Base64$Decoder;->c:[I

    .line 190
    new-array v0, v0, [I

    fill-array-data v0, :array_216

    sput-object v0, Lcn/kuaipan/android/utils/Base64$Decoder;->d:[I

    return-void

    nop

    :array_12
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_216
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 3

    .line 222
    invoke-direct {p0}, Lcn/kuaipan/android/utils/Base64$Coder;-><init>()V

    .line 223
    iput-object p2, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->a:[B

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_c

    .line 225
    sget-object p1, Lcn/kuaipan/android/utils/Base64$Decoder;->c:[I

    goto :goto_e

    :cond_c
    sget-object p1, Lcn/kuaipan/android/utils/Base64$Decoder;->d:[I

    :goto_e
    iput-object p1, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->i:[I

    const/4 p1, 0x0

    .line 226
    iput p1, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    .line 227
    iput p1, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->h:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 2

    mul-int/lit8 p1, p1, 0x3

    .line 235
    div-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public a([BIIZ)Z
    .registers 16

    .line 245
    iget v0, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    add-int/2addr p3, p2

    .line 256
    iget v0, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    .line 257
    iget v3, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->h:I

    .line 259
    iget-object v4, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->a:[B

    .line 260
    iget-object v5, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->i:[I

    move v6, v3

    const/4 v3, 0x0

    :goto_12
    const/4 v7, 0x4

    if-ge p2, p3, :cond_e3

    if-nez v0, :cond_5c

    :goto_17
    add-int/lit8 v8, p2, 0x4

    if-gt v8, p3, :cond_58

    .line 278
    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    aget v6, v5, v6

    shl-int/lit8 v6, v6, 0x12

    add-int/lit8 v9, p2, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v6, v9

    add-int/lit8 v9, p2, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    shl-int/2addr v9, v2

    or-int/2addr v6, v9

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    or-int/2addr v6, v9

    if-ltz v6, :cond_58

    add-int/lit8 p2, v3, 0x2

    int-to-byte v9, v6

    .line 282
    aput-byte v9, v4, p2

    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    .line 283
    aput-byte v9, v4, p2

    shr-int/lit8 p2, v6, 0x10

    int-to-byte p2, p2

    .line 284
    aput-byte p2, v4, v3

    add-int/lit8 v3, v3, 0x3

    move p2, v8

    goto :goto_17

    :cond_58
    if-lt p2, p3, :cond_5c

    goto/16 :goto_e3

    :cond_5c
    add-int/lit8 v8, p2, 0x1

    .line 297
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    aget p2, v5, p2

    const/4 v9, -0x2

    const/4 v10, -0x1

    packed-switch v0, :pswitch_data_114

    goto/16 :goto_e0

    :pswitch_6b
    if-eq p2, v10, :cond_e0

    .line 368
    iput v2, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    return v1

    :pswitch_70
    if-ne p2, v9, :cond_77

    add-int/lit8 p2, v0, 0x1

    move v0, p2

    goto/16 :goto_e0

    :cond_77
    if-eq p2, v10, :cond_e0

    .line 361
    iput v2, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    return v1

    :pswitch_7c
    if-ltz p2, :cond_97

    shl-int/lit8 v0, v6, 0x6

    or-int/2addr p2, v0

    add-int/lit8 v0, v3, 0x2

    int-to-byte v6, p2

    .line 339
    aput-byte v6, v4, v0

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v6, p2, 0x8

    int-to-byte v6, v6

    .line 340
    aput-byte v6, v4, v0

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 341
    aput-byte v0, v4, v3

    add-int/lit8 v3, v3, 0x3

    move v6, p2

    const/4 v0, 0x0

    goto :goto_e0

    :cond_97
    if-ne p2, v9, :cond_aa

    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 v0, v6, 0x2

    int-to-byte v0, v0

    .line 347
    aput-byte v0, v4, p2

    shr-int/lit8 p2, v6, 0xa

    int-to-byte p2, p2

    .line 348
    aput-byte p2, v4, v3

    add-int/lit8 v3, v3, 0x2

    const/4 p2, 0x5

    const/4 v0, 0x5

    goto :goto_e0

    :cond_aa
    if-eq p2, v10, :cond_e0

    .line 352
    iput v2, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    return v1

    :pswitch_af
    if-ltz p2, :cond_b7

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr p2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    :cond_b7
    if-ne p2, v9, :cond_c3

    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 v0, v6, 0x4

    int-to-byte v0, v0

    .line 327
    aput-byte v0, v4, v3

    move v3, p2

    const/4 v0, 0x4

    goto :goto_e0

    :cond_c3
    if-eq p2, v10, :cond_e0

    .line 330
    iput v2, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    return v1

    :pswitch_c8
    if-ltz p2, :cond_d0

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr p2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    :cond_d0
    if-eq p2, v10, :cond_e0

    .line 315
    iput v2, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    return v1

    :pswitch_d5
    if-ltz p2, :cond_db

    add-int/lit8 v0, v0, 0x1

    :goto_d9
    move v6, p2

    goto :goto_e0

    :cond_db
    if-eq p2, v10, :cond_e0

    .line 305
    iput v2, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    return v1

    :cond_e0
    :goto_e0
    move p2, v8

    goto/16 :goto_12

    :cond_e3
    :goto_e3
    const/4 p1, 0x1

    if-nez p4, :cond_ed

    .line 378
    iput v0, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    .line 379
    iput v6, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->h:I

    .line 380
    iput v3, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->b:I

    return p1

    :cond_ed
    packed-switch v0, :pswitch_data_124

    goto :goto_10f

    .line 409
    :pswitch_f1
    iput v2, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    return v1

    :pswitch_f4
    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 p3, v6, 0xa

    int-to-byte p3, p3

    .line 404
    aput-byte p3, v4, v3

    add-int/lit8 v3, p2, 0x1

    shr-int/lit8 p3, v6, 0x2

    int-to-byte p3, p3

    .line 405
    aput-byte p3, v4, p2

    goto :goto_10f

    :pswitch_103
    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 p3, v6, 0x4

    int-to-byte p3, p3

    .line 399
    aput-byte p3, v4, v3

    move v3, p2

    goto :goto_10f

    .line 394
    :pswitch_10c
    iput v2, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    return v1

    .line 417
    :goto_10f
    :pswitch_10f
    iput v0, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->g:I

    .line 418
    iput v3, p0, Lcn/kuaipan/android/utils/Base64$Decoder;->b:I

    return p1

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_d5
        :pswitch_c8
        :pswitch_af
        :pswitch_7c
        :pswitch_70
        :pswitch_6b
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_10f
        :pswitch_10c
        :pswitch_103
        :pswitch_f4
        :pswitch_f1
    .end packed-switch
.end method
