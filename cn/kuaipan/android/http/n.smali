.class public Lcn/kuaipan/android/http/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x2000


# instance fields
.field private b:Ljava/io/InputStream;

.field private c:I

.field private d:Z

.field private e:[B

.field private final f:Lcn/kuaipan/android/http/j;

.field private g:Ljava/io/File;

.field private h:Z

.field private i:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/j;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_17

    if-eqz p1, :cond_17

    .line 29
    iput-object p1, p0, Lcn/kuaipan/android/http/n;->b:Ljava/io/InputStream;

    .line 30
    iput-object p2, p0, Lcn/kuaipan/android/http/n;->f:Lcn/kuaipan/android/http/j;

    const/16 p1, 0x2000

    .line 31
    new-array p1, p1, [B

    iput-object p1, p0, Lcn/kuaipan/android/http/n;->e:[B

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcn/kuaipan/android/http/n;->c:I

    .line 33
    iput-boolean p1, p0, Lcn/kuaipan/android/http/n;->d:Z

    return-void

    .line 26
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "InputStream & NetCacheManager can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(I[BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_4

    return v0

    .line 112
    :cond_4
    iget-boolean v1, p0, Lcn/kuaipan/android/http/n;->d:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcn/kuaipan/android/http/n;->c:I

    if-lt p1, v1, :cond_e

    const/4 p1, -0x1

    return p1

    .line 116
    :cond_e
    iget v1, p0, Lcn/kuaipan/android/http/n;->c:I

    if-gt p1, v1, :cond_35

    .line 120
    iget v1, p0, Lcn/kuaipan/android/http/n;->c:I

    if-ne p1, v1, :cond_17

    return v0

    .line 124
    :cond_17
    iget v0, p0, Lcn/kuaipan/android/http/n;->c:I

    sub-int/2addr v0, p1

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 125
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_28

    .line 126
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->e:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_34

    .line 128
    :cond_28
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 129
    iget-object p1, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p4

    :goto_34
    return p4

    .line 117
    :cond_35
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "from > pos"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcn/kuaipan/android/http/n;->d:Z

    if-nez v0, :cond_c1

    iget v0, p0, Lcn/kuaipan/android/http/n;->c:I

    if-gt p1, v0, :cond_a

    goto/16 :goto_c1

    .line 139
    :cond_a
    rem-int/lit16 v0, p1, 0x2000

    if-nez v0, :cond_f

    goto :goto_15

    :cond_f
    div-int/lit16 p1, p1, 0x2000

    mul-int/lit16 p1, p1, 0x2000

    add-int/lit16 p1, p1, 0x2000

    .line 140
    :goto_15
    iget-boolean v0, p0, Lcn/kuaipan/android/http/n;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcn/kuaipan/android/http/n;->e:[B

    array-length v0, v0

    if-le p1, v0, :cond_54

    .line 141
    iput-boolean v1, p0, Lcn/kuaipan/android/http/n;->h:Z

    .line 144
    :try_start_22
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->f:Lcn/kuaipan/android/http/j;

    invoke-virtual {v0}, Lcn/kuaipan/android/http/j;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/http/n;->g:Ljava/io/File;

    .line 145
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->g:Ljava/io/File;

    if-eqz v0, :cond_54

    .line 146
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcn/kuaipan/android/http/n;->g:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    .line 147
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcn/kuaipan/android/http/n;->e:[B

    iget v4, p0, Lcn/kuaipan/android/http/n;->c:I

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_42
    .catch Ljava/io/InterruptedIOException; {:try_start_22 .. :try_end_42} :catch_52
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_42} :catch_43

    goto :goto_54

    .line 153
    :catch_43
    :try_start_43
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_4c

    .line 154
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4c
    .catch Ljava/io/InterruptedIOException; {:try_start_43 .. :try_end_4c} :catch_50
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_4c

    :catch_4c
    :cond_4c
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    goto :goto_54

    :catch_50
    move-exception p1

    .line 157
    throw p1

    :catch_52
    move-exception p1

    .line 150
    throw p1

    .line 165
    :cond_54
    :goto_54
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_95

    .line 166
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->e:[B

    array-length v0, v0

    if-le p1, v0, :cond_73

    .line 167
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->e:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    :goto_62
    if-ge v0, p1, :cond_67

    mul-int/lit8 v0, v0, 0x2

    goto :goto_62

    .line 172
    :cond_67
    new-array v0, v0, [B

    .line 173
    iget-object v3, p0, Lcn/kuaipan/android/http/n;->e:[B

    iget-object v4, p0, Lcn/kuaipan/android/http/n;->e:[B

    array-length v4, v4

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iput-object v0, p0, Lcn/kuaipan/android/http/n;->e:[B

    .line 177
    :cond_73
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcn/kuaipan/android/http/n;->e:[B

    iget v3, p0, Lcn/kuaipan/android/http/n;->c:I

    iget-object v4, p0, Lcn/kuaipan/android/http/n;->e:[B

    array-length v4, v4

    iget v5, p0, Lcn/kuaipan/android/http/n;->c:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcn/kuaipan/android/http/n;->c:I

    sub-int/2addr p1, v5

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_92

    .line 179
    iget v0, p0, Lcn/kuaipan/android/http/n;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/kuaipan/android/http/n;->c:I

    goto :goto_c0

    .line 181
    :cond_92
    iput-boolean v1, p0, Lcn/kuaipan/android/http/n;->d:Z

    goto :goto_c0

    .line 184
    :cond_95
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lcn/kuaipan/android/http/n;->e:[B

    iget-object v4, p0, Lcn/kuaipan/android/http/n;->e:[B

    array-length v4, v4

    iget v5, p0, Lcn/kuaipan/android/http/n;->c:I

    sub-int/2addr p1, v5

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, v3, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_be

    .line 186
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcn/kuaipan/android/http/n;->c:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcn/kuaipan/android/http/n;->e:[B

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 188
    iget v0, p0, Lcn/kuaipan/android/http/n;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/kuaipan/android/http/n;->c:I

    goto :goto_c0

    .line 190
    :cond_be
    iput-boolean v1, p0, Lcn/kuaipan/android/http/n;->d:Z

    :goto_c0
    return-void

    :cond_c1
    :goto_c1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_19

    .line 42
    iget-boolean v0, p0, Lcn/kuaipan/android/http/n;->d:Z

    if-nez v0, :cond_14

    .line 43
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcn/kuaipan/android/http/n;->c:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    goto :goto_17

    .line 45
    :cond_14
    iget v0, p0, Lcn/kuaipan/android/http/n;->c:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_21

    sub-int/2addr v0, p1

    .line 47
    :goto_17
    monitor-exit p0

    return v0

    .line 38
    :cond_19
    :try_start_19
    new-instance p1, Ljava/io/IOException;

    const-string v0, "RandomInputBuffer has been closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    .line 36
    monitor-exit p0

    throw p1
.end method

.method public a(I[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcn/kuaipan/android/http/n;->a(I[BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized a(I[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_31

    if-eqz p2, :cond_29

    or-int v0, p3, p4

    if-ltz v0, :cond_23

    .line 92
    array-length v0, p2
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_39

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_23

    if-nez p4, :cond_14

    const/4 p1, 0x0

    .line 96
    monitor-exit p0

    return p1

    :cond_14
    add-int v0, p1, p4

    .line 100
    :try_start_16
    iget v1, p0, Lcn/kuaipan/android/http/n;->c:I

    if-le v0, v1, :cond_1d

    .line 101
    invoke-direct {p0, v0}, Lcn/kuaipan/android/http/n;->c(I)V

    .line 104
    :cond_1d
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/kuaipan/android/http/n;->b(I[BII)I

    move-result p1
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_39

    monitor-exit p0

    return p1

    .line 93
    :cond_23
    :try_start_23
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 90
    :cond_29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_31
    new-instance p1, Ljava/io/IOException;

    const-string p2, "RandomInputBuffer has been closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p1

    .line 84
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->b:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 52
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 53
    iput-object v1, p0, Lcn/kuaipan/android/http/n;->b:Ljava/io/InputStream;

    .line 56
    :cond_d
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_18

    .line 57
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 58
    iput-object v1, p0, Lcn/kuaipan/android/http/n;->i:Ljava/io/RandomAccessFile;

    .line 61
    :cond_18
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->g:Ljava/io/File;

    if-eqz v0, :cond_25

    .line 62
    iget-object v0, p0, Lcn/kuaipan/android/http/n;->f:Lcn/kuaipan/android/http/j;

    iget-object v2, p0, Lcn/kuaipan/android/http/n;->g:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcn/kuaipan/android/http/j;->a(Ljava/io/File;)V

    .line 63
    iput-object v1, p0, Lcn/kuaipan/android/http/n;->g:Ljava/io/File;

    .line 66
    :cond_25
    iput-object v1, p0, Lcn/kuaipan/android/http/n;->e:[B

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcn/kuaipan/android/http/n;->c:I

    .line 68
    iput-boolean v0, p0, Lcn/kuaipan/android/http/n;->d:Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 69
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    .line 50
    monitor-exit p0

    throw v0
.end method

.method public b(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 72
    new-array v0, v0, [B

    .line 73
    invoke-virtual {p0, p1, v0}, Lcn/kuaipan/android/http/n;->a(I[B)I

    move-result p1

    if-lez p1, :cond_d

    const/4 p1, 0x0

    .line 74
    aget-byte p1, v0, p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method
