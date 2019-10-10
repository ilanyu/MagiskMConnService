.class Lcn/kuaipan/android/utils/Base64$Encoder;
.super Lcn/kuaipan/android/utils/Base64$Coder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field public static final c:I = 0x13

.field static final synthetic h:Z

.field private static final i:[B

.field private static final j:[B


# instance fields
.field d:I

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field private final k:[B

.field private l:I

.field private final m:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 522
    const-class v0, Lcn/kuaipan/android/utils/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcn/kuaipan/android/utils/Base64$Encoder;->h:Z

    const/16 v0, 0x40

    .line 534
    new-array v1, v0, [B

    fill-array-data v1, :array_1c

    sput-object v1, Lcn/kuaipan/android/utils/Base64$Encoder;->i:[B

    .line 545
    new-array v0, v0, [B

    fill-array-data v0, :array_40

    sput-object v0, Lcn/kuaipan/android/utils/Base64$Encoder;->j:[B

    return-void

    nop

    :array_1c
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_40
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 5

    .line 561
    invoke-direct {p0}, Lcn/kuaipan/android/utils/Base64$Coder;-><init>()V

    .line 562
    iput-object p2, p0, Lcn/kuaipan/android/utils/Base64$Encoder;->a:[B

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    .line 564
    :goto_e
    iput-boolean p2, p0, Lcn/kuaipan/android/utils/Base64$Encoder;->e:Z

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    .line 565
    :goto_17
    iput-boolean p2, p0, Lcn/kuaipan/android/utils/Base64$Encoder;->f:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 566
    :goto_1f
    iput-boolean v1, p0, Lcn/kuaipan/android/utils/Base64$Encoder;->g:Z

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_28

    .line 567
    sget-object p1, Lcn/kuaipan/android/utils/Base64$Encoder;->i:[B

    goto :goto_2a

    :cond_28
    sget-object p1, Lcn/kuaipan/android/utils/Base64$Encoder;->j:[B

    :goto_2a
    iput-object p1, p0, Lcn/kuaipan/android/utils/Base64$Encoder;->m:[B

    const/4 p1, 0x2

    .line 569
    new-array p1, p1, [B

    iput-object p1, p0, Lcn/kuaipan/android/utils/Base64$Encoder;->k:[B

    .line 570
    iput v0, p0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    .line 572
    iget-boolean p1, p0, Lcn/kuaipan/android/utils/Base64$Encoder;->f:Z

    if-eqz p1, :cond_3a

    const/16 p1, 0x13

    goto :goto_3b

    :cond_3a
    const/4 p1, -0x1

    :goto_3b
    iput p1, p0, Lcn/kuaipan/android/utils/Base64$Encoder;->l:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 2

    mul-int/lit8 p1, p1, 0x8

    .line 580
    div-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public a([BIIZ)Z
    .registers 23

    move-object/from16 v0, p0

    .line 585
    iget-object v3, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->m:[B

    .line 586
    iget-object v4, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->a:[B

    .line 588
    iget v5, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->l:I

    add-int v6, p3, p2

    .line 598
    iget v7, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v7, :pswitch_data_21e

    goto :goto_4f

    :pswitch_13
    add-int/lit8 v7, p2, 0x1

    if-gt v7, v6, :cond_4f

    .line 617
    iget-object v11, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->k:[B

    aget-byte v11, v11, v9

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    iget-object v12, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->k:[B

    aget-byte v12, v12, v10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v11

    .line 619
    iput v9, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    goto :goto_52

    :pswitch_30
    add-int/lit8 v7, p2, 0x2

    if-gt v7, v6, :cond_4f

    .line 607
    iget-object v7, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->k:[B

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v11, p2, 0x1

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v7

    add-int/lit8 v7, v11, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v2, v11

    .line 609
    iput v9, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    goto :goto_52

    :cond_4f
    :goto_4f
    :pswitch_4f
    move/from16 v7, p2

    const/4 v2, -0x1

    :goto_52
    const/4 v12, 0x4

    const/16 v13, 0xd

    const/16 v14, 0xa

    const/4 v15, 0x2

    if-eq v2, v8, :cond_90

    shr-int/lit8 v8, v2, 0x12

    and-int/lit8 v8, v8, 0x3f

    .line 625
    aget-byte v8, v3, v8

    aput-byte v8, v4, v9

    shr-int/lit8 v8, v2, 0xc

    and-int/lit8 v8, v8, 0x3f

    .line 626
    aget-byte v8, v3, v8

    aput-byte v8, v4, v10

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    .line 627
    aget-byte v8, v3, v8

    aput-byte v8, v4, v15

    and-int/lit8 v2, v2, 0x3f

    .line 628
    aget-byte v2, v3, v2

    const/4 v8, 0x3

    aput-byte v2, v4, v8

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_8d

    .line 630
    iget-boolean v2, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->g:Z

    if-eqz v2, :cond_85

    const/4 v2, 0x5

    .line 631
    aput-byte v13, v4, v12

    goto :goto_86

    :cond_85
    const/4 v2, 0x4

    :goto_86
    add-int/lit8 v5, v2, 0x1

    .line 632
    aput-byte v14, v4, v2

    const/16 v2, 0x13

    goto :goto_92

    :cond_8d
    move v2, v5

    const/4 v5, 0x4

    goto :goto_92

    :cond_90
    move v2, v5

    const/4 v5, 0x0

    :goto_92
    add-int/lit8 v8, v7, 0x3

    if-gt v8, v6, :cond_eb

    .line 643
    aget-byte v11, p1, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v16, v7, 0x1

    aget-byte v15, p1, v16

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v11, v15

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v11

    shr-int/lit8 v11, v7, 0x12

    and-int/lit8 v11, v11, 0x3f

    .line 645
    aget-byte v11, v3, v11

    aput-byte v11, v4, v5

    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v15, v7, 0xc

    and-int/lit8 v15, v15, 0x3f

    .line 646
    aget-byte v15, v3, v15

    aput-byte v15, v4, v11

    add-int/lit8 v11, v5, 0x2

    shr-int/lit8 v15, v7, 0x6

    and-int/lit8 v15, v15, 0x3f

    .line 647
    aget-byte v15, v3, v15

    aput-byte v15, v4, v11

    add-int/lit8 v11, v5, 0x3

    and-int/lit8 v7, v7, 0x3f

    .line 648
    aget-byte v7, v3, v7

    aput-byte v7, v4, v11

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_e8

    .line 652
    iget-boolean v2, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->g:Z

    if-eqz v2, :cond_df

    add-int/lit8 v2, v5, 0x1

    .line 653
    aput-byte v13, v4, v5

    goto :goto_e0

    :cond_df
    move v2, v5

    :goto_e0
    add-int/lit8 v5, v2, 0x1

    .line 654
    aput-byte v14, v4, v2

    move v7, v8

    const/16 v2, 0x13

    goto :goto_e9

    :cond_e8
    move v7, v8

    :goto_e9
    const/4 v15, 0x2

    goto :goto_92

    :cond_eb
    if-eqz p4, :cond_1eb

    .line 665
    iget v8, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    sub-int v8, v7, v8

    add-int/lit8 v11, v6, -0x1

    if-ne v8, v11, :cond_140

    .line 667
    iget v8, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    if-lez v8, :cond_ff

    iget-object v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->k:[B

    aget-byte v1, v1, v9

    const/4 v9, 0x1

    goto :goto_104

    :cond_ff
    add-int/lit8 v8, v7, 0x1

    aget-byte v1, p1, v7

    move v7, v8

    :goto_104
    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v12

    .line 668
    iget v8, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 669
    aget-byte v9, v3, v9

    aput-byte v9, v4, v5

    add-int/lit8 v5, v8, 0x1

    and-int/lit8 v1, v1, 0x3f

    .line 670
    aget-byte v1, v3, v1

    aput-byte v1, v4, v8

    .line 671
    iget-boolean v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->e:Z

    if-eqz v1, :cond_12c

    add-int/lit8 v1, v5, 0x1

    const/16 v3, 0x3d

    .line 672
    aput-byte v3, v4, v5

    add-int/lit8 v5, v1, 0x1

    .line 673
    aput-byte v3, v4, v1

    .line 675
    :cond_12c
    iget-boolean v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->f:Z

    if-eqz v1, :cond_1cf

    .line 676
    iget-boolean v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->g:Z

    if-eqz v1, :cond_139

    add-int/lit8 v1, v5, 0x1

    .line 677
    aput-byte v13, v4, v5

    goto :goto_13a

    :cond_139
    move v1, v5

    :goto_13a
    add-int/lit8 v5, v1, 0x1

    .line 678
    aput-byte v14, v4, v1

    goto/16 :goto_1cf

    .line 680
    :cond_140
    iget v8, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    sub-int v8, v7, v8

    add-int/lit8 v11, v6, -0x2

    if-ne v8, v11, :cond_1b6

    .line 682
    iget v8, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    if-le v8, v10, :cond_157

    iget-object v8, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->k:[B

    aget-byte v8, v8, v9

    const/4 v9, 0x1

    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto :goto_15b

    :cond_157
    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p1, v7

    :goto_15b
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v14

    iget v11, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    if-lez v11, :cond_169

    iget-object v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->k:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v1, v1, v9

    goto :goto_16f

    :cond_169
    add-int/lit8 v11, v8, 0x1

    aget-byte v1, p1, v8

    move v8, v11

    move v11, v9

    :goto_16f
    and-int/lit16 v1, v1, 0xff

    const/4 v9, 0x2

    shl-int/2addr v1, v9

    or-int/2addr v1, v7

    .line 684
    iget v7, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    sub-int/2addr v7, v11

    iput v7, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    .line 685
    aget-byte v9, v3, v9

    aput-byte v9, v4, v5

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 686
    aget-byte v9, v3, v9

    aput-byte v9, v4, v7

    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v1, v1, 0x3f

    .line 687
    aget-byte v1, v3, v1

    aput-byte v1, v4, v5

    .line 688
    iget-boolean v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->e:Z

    if-eqz v1, :cond_1a0

    add-int/lit8 v1, v7, 0x1

    const/16 v3, 0x3d

    .line 689
    aput-byte v3, v4, v7

    goto :goto_1a1

    :cond_1a0
    move v1, v7

    .line 691
    :goto_1a1
    iget-boolean v3, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->f:Z

    if-eqz v3, :cond_1b3

    .line 692
    iget-boolean v3, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->g:Z

    if-eqz v3, :cond_1ae

    add-int/lit8 v3, v1, 0x1

    .line 693
    aput-byte v13, v4, v1

    move v1, v3

    :cond_1ae
    add-int/lit8 v3, v1, 0x1

    .line 694
    aput-byte v14, v4, v1

    move v1, v3

    :cond_1b3
    move v5, v1

    move v7, v8

    goto :goto_1cf

    .line 696
    :cond_1b6
    iget-boolean v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->f:Z

    if-eqz v1, :cond_1cf

    if-lez v5, :cond_1cf

    const/16 v1, 0x13

    if-eq v2, v1, :cond_1cf

    .line 697
    iget-boolean v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->g:Z

    if-eqz v1, :cond_1c9

    add-int/lit8 v1, v5, 0x1

    .line 698
    aput-byte v13, v4, v5

    goto :goto_1ca

    :cond_1c9
    move v1, v5

    :goto_1ca
    add-int/lit8 v3, v1, 0x1

    .line 699
    aput-byte v14, v4, v1

    move v5, v3

    .line 702
    :cond_1cf
    :goto_1cf
    sget-boolean v1, Lcn/kuaipan/android/utils/Base64$Encoder;->h:Z

    if-nez v1, :cond_1de

    iget v1, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    if-nez v1, :cond_1d8

    goto :goto_1de

    :cond_1d8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 703
    :cond_1de
    :goto_1de
    sget-boolean v1, Lcn/kuaipan/android/utils/Base64$Encoder;->h:Z

    if-nez v1, :cond_219

    if-ne v7, v6, :cond_1e5

    goto :goto_219

    :cond_1e5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1eb
    add-int/lit8 v3, v6, -0x1

    if-ne v7, v3, :cond_1fc

    .line 709
    iget-object v3, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->k:[B

    iget v4, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    aget-byte v1, p1, v7

    aput-byte v1, v3, v4

    goto :goto_219

    :cond_1fc
    const/4 v3, 0x2

    sub-int/2addr v6, v3

    if-ne v7, v6, :cond_219

    .line 711
    iget-object v3, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->k:[B

    iget v4, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    aget-byte v6, p1, v7

    aput-byte v6, v3, v4

    .line 712
    iget-object v3, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->k:[B

    iget v4, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->d:I

    add-int/2addr v7, v10

    aget-byte v1, p1, v7

    aput-byte v1, v3, v4

    .line 716
    :cond_219
    :goto_219
    iput v5, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->b:I

    .line 717
    iput v2, v0, Lcn/kuaipan/android/utils/Base64$Encoder;->l:I

    return v10

    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_30
        :pswitch_13
    .end packed-switch
.end method
