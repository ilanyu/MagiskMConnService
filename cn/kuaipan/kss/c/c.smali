.class public Lcn/kuaipan/kss/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 8
    new-array v0, v0, [I

    iput-object v0, p0, Lcn/kuaipan/kss/c/c;->a:[I

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_45

    .line 47
    array-length v0, p1

    if-eqz v0, :cond_3d

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcn/kuaipan/kss/c/c;->b:I

    .line 52
    iput v1, p0, Lcn/kuaipan/kss/c/c;->c:I

    const/4 v2, 0x0

    :goto_b
    const/16 v3, 0x100

    if-ge v2, v3, :cond_16

    .line 54
    iget-object v3, p0, Lcn/kuaipan/kss/c/c;->a:[I

    aput v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_18
    if-ge v1, v3, :cond_3c

    .line 62
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Lcn/kuaipan/kss/c/c;->a:[I

    aget v6, v6, v1

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    and-int/lit16 v4, v5, 0xff

    .line 64
    iget-object v5, p0, Lcn/kuaipan/kss/c/c;->a:[I

    aget v5, v5, v1

    .line 65
    iget-object v6, p0, Lcn/kuaipan/kss/c/c;->a:[I

    iget-object v7, p0, Lcn/kuaipan/kss/c/c;->a:[I

    aget v7, v7, v4

    aput v7, v6, v1

    .line 66
    iget-object v6, p0, Lcn/kuaipan/kss/c/c;->a:[I

    aput v5, v6, v4

    add-int/lit8 v2, v2, 0x1

    .line 68
    rem-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_3c
    return-void

    .line 49
    :cond_3d
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Invalid user key length"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_45
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Null user key"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([BII[BI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_52

    .line 89
    iget v1, p0, Lcn/kuaipan/kss/c/c;->b:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcn/kuaipan/kss/c/c;->b:I

    .line 90
    iget-object v1, p0, Lcn/kuaipan/kss/c/c;->a:[I

    iget v2, p0, Lcn/kuaipan/kss/c/c;->b:I

    aget v1, v1, v2

    iget v2, p0, Lcn/kuaipan/kss/c/c;->c:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcn/kuaipan/kss/c/c;->c:I

    .line 92
    iget-object v1, p0, Lcn/kuaipan/kss/c/c;->a:[I

    iget v2, p0, Lcn/kuaipan/kss/c/c;->b:I

    aget v1, v1, v2

    .line 93
    iget-object v2, p0, Lcn/kuaipan/kss/c/c;->a:[I

    iget v3, p0, Lcn/kuaipan/kss/c/c;->b:I

    iget-object v4, p0, Lcn/kuaipan/kss/c/c;->a:[I

    iget v5, p0, Lcn/kuaipan/kss/c/c;->c:I

    aget v4, v4, v5

    aput v4, v2, v3

    .line 94
    iget-object v2, p0, Lcn/kuaipan/kss/c/c;->a:[I

    iget v3, p0, Lcn/kuaipan/kss/c/c;->c:I

    aput v1, v2, v3

    .line 96
    iget-object v1, p0, Lcn/kuaipan/kss/c/c;->a:[I

    iget v2, p0, Lcn/kuaipan/kss/c/c;->b:I

    aget v1, v1, v2

    iget-object v2, p0, Lcn/kuaipan/kss/c/c;->a:[I

    iget v3, p0, Lcn/kuaipan/kss/c/c;->c:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p5, 0x1

    add-int/lit8 v3, p2, 0x1

    .line 97
    aget-byte p2, p1, p2

    iget-object v4, p0, Lcn/kuaipan/kss/c/c;->a:[I

    aget v1, v4, v1

    xor-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p5, v2

    move p2, v3

    goto :goto_1

    :cond_52
    return-void
.end method
