.class public Lcn/kuaipan/android/kss/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/http/c;


# static fields
.field private static final a:I = 0x2000


# instance fields
.field private final b:[B

.field private final c:Lcn/kuaipan/android/utils/o;

.field private d:[B

.field private e:I


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcn/kuaipan/android/kss/e;->e:I

    .line 19
    iput-object p1, p0, Lcn/kuaipan/android/kss/e;->b:[B

    .line 20
    new-instance v0, Lcn/kuaipan/android/utils/o;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/o;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/e;->c:Lcn/kuaipan/android/utils/o;

    .line 21
    iget-object v0, p0, Lcn/kuaipan/android/kss/e;->c:Lcn/kuaipan/android/utils/o;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/utils/o;->a([B)V

    const/16 p1, 0x2000

    .line 22
    new-array p1, p1, [B

    iput-object p1, p0, Lcn/kuaipan/android/kss/e;->d:[B

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 28
    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/e;->c:Lcn/kuaipan/android/utils/o;

    iget-object v1, p0, Lcn/kuaipan/android/kss/e;->b:[B

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/utils/o;->a([B)V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcn/kuaipan/android/kss/e;->e:I
    :try_end_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public a(J)V
    .registers 5

    .line 43
    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/e;->c:Lcn/kuaipan/android/utils/o;

    iget-object v1, p0, Lcn/kuaipan/android/kss/e;->b:[B

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/utils/o;->a([B)V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcn/kuaipan/android/kss/e;->e:I

    .line 45
    iget-object v0, p0, Lcn/kuaipan/android/kss/e;->c:Lcn/kuaipan/android/utils/o;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/utils/o;->a(J)V
    :try_end_f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method public declared-synchronized a([BII)V
    .registers 11

    monitor-enter p0

    .line 63
    :try_start_1
    iget v0, p0, Lcn/kuaipan/android/kss/e;->e:I

    add-int/2addr v0, p3

    .line 65
    iget-object v1, p0, Lcn/kuaipan/android/kss/e;->d:[B

    array-length v1, v1

    if-le v0, v1, :cond_1f

    .line 66
    iget-object v1, p0, Lcn/kuaipan/android/kss/e;->d:[B

    .line 67
    array-length v2, v1

    shl-int/lit8 v2, v2, 0x1

    :goto_e
    if-le v0, v2, :cond_13

    shl-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 72
    :cond_13
    new-array v2, v2, [B

    iput-object v2, p0, Lcn/kuaipan/android/kss/e;->d:[B

    .line 73
    iget-object v2, p0, Lcn/kuaipan/android/kss/e;->d:[B

    iget v3, p0, Lcn/kuaipan/android/kss/e;->e:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    :cond_1f
    iget-object v1, p0, Lcn/kuaipan/android/kss/e;->c:Lcn/kuaipan/android/utils/o;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcn/kuaipan/android/utils/o;->a([BII[BI)V

    .line 77
    iget-object v1, p0, Lcn/kuaipan/android/kss/e;->d:[B

    iget v2, p0, Lcn/kuaipan/android/kss/e;->e:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iput v0, p0, Lcn/kuaipan/android/kss/e;->e:I
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 79
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    .line 62
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b([BII)I
    .registers 6

    monitor-enter p0

    .line 83
    :try_start_1
    iget v0, p0, Lcn/kuaipan/android/kss/e;->e:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 84
    monitor-exit p0

    return v1

    .line 87
    :cond_8
    :try_start_8
    iget v0, p0, Lcn/kuaipan/android/kss/e;->e:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 88
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 90
    iget-object v0, p0, Lcn/kuaipan/android/kss/e;->d:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget p1, p0, Lcn/kuaipan/android/kss/e;->e:I

    sub-int/2addr p1, p3

    if-lez p1, :cond_25

    .line 93
    iget-object p2, p0, Lcn/kuaipan/android/kss/e;->d:[B

    iget-object v0, p0, Lcn/kuaipan/android/kss/e;->d:[B

    invoke-static {p2, p3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_25
    iput p1, p0, Lcn/kuaipan/android/kss/e;->e:I
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_29

    .line 97
    monitor-exit p0

    return p3

    :catchall_29
    move-exception p1

    .line 82
    monitor-exit p0

    throw p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcn/kuaipan/android/kss/e;->e:I

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/e;->g()Lcn/kuaipan/android/kss/e;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 3

    .line 58
    iget v0, p0, Lcn/kuaipan/android/kss/e;->e:I

    rsub-int v0, v0, 0x2000

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic f()Lcn/kuaipan/android/http/c;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/e;->g()Lcn/kuaipan/android/kss/e;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcn/kuaipan/android/kss/e;
    .registers 3

    .line 108
    :try_start_0
    new-instance v0, Lcn/kuaipan/android/kss/e;

    iget-object v1, p0, Lcn/kuaipan/android/kss/e;->b:[B

    invoke-direct {v0, v1}, Lcn/kuaipan/android/kss/e;-><init>([B)V
    :try_end_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    const/4 v0, 0x0

    return-object v0
.end method
