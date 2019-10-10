.class public Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "FileMimeUtils"

.field private static final b:[Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

.field private static final c:I

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0x13

    .line 64
    new-array v0, v0, [Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v2, "image/jpeg"

    const/4 v3, 0x2

    new-array v4, v3, [B

    fill-array-data v4, :array_16a

    new-array v5, v3, [B

    fill-array-data v5, :array_170

    invoke-direct {v1, v2, v4, v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v4, "image/jpeg"

    new-array v5, v3, [B

    fill-array-data v5, :array_176

    new-array v6, v3, [B

    fill-array-data v6, :array_17c

    invoke-direct {v1, v4, v5, v6}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v4, "image/png"

    const/16 v5, 0x8

    new-array v6, v5, [B

    fill-array-data v6, :array_182

    const/4 v7, 0x0

    invoke-direct {v1, v4, v6, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v4, "image/tga"

    const/4 v6, 0x5

    new-array v8, v6, [B

    fill-array-data v8, :array_18a

    invoke-direct {v1, v4, v8, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v4, "image/tga"

    new-array v8, v6, [B

    fill-array-data v8, :array_192

    invoke-direct {v1, v4, v8, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v4, "image/gif"

    const/4 v8, 0x6

    new-array v9, v8, [B

    fill-array-data v9, :array_19a

    invoke-direct {v1, v4, v9, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v4, "image/gif"

    new-array v6, v8, [B

    fill-array-data v6, :array_1a2

    invoke-direct {v1, v4, v6, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v4, "image/bmp"

    new-array v6, v3, [B

    fill-array-data v6, :array_1aa

    invoke-direct {v1, v4, v6, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v4, "image/tiff"

    new-array v6, v3, [B

    fill-array-data v6, :array_1b0

    invoke-direct {v1, v4, v6, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v4, "image/tiff"

    new-array v3, v3, [B

    fill-array-data v3, :array_1b6

    invoke-direct {v1, v4, v3, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v3, "video/3gpp"

    const/16 v4, 0xc

    new-array v5, v4, [B

    fill-array-data v5, :array_1bc

    invoke-direct {v1, v3, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v5, "video/mp4"

    new-array v6, v4, [B

    fill-array-data v6, :array_1c6

    invoke-direct {v1, v5, v6, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v5, 0xb

    aput-object v1, v0, v5

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v6, "video/mp4"

    new-array v8, v4, [B

    fill-array-data v8, :array_1d0

    invoke-direct {v1, v6, v8, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v6, "video/mp4"

    new-array v5, v5, [B

    fill-array-data v5, :array_1da

    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v5, 0xd

    aput-object v1, v0, v5

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v5, "video/3gp"

    new-array v6, v4, [B

    fill-array-data v6, :array_1e4

    invoke-direct {v1, v5, v6, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v5, 0xe

    aput-object v1, v0, v5

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v5, "video/quicktime"

    new-array v3, v3, [B

    fill-array-data v3, :array_1ee

    invoke-direct {v1, v5, v3, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v3, "video/mp4"

    new-array v5, v4, [B

    fill-array-data v5, :array_1f8

    invoke-direct {v1, v3, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v3, "video/quicktime"

    new-array v5, v4, [B

    fill-array-data v5, :array_202

    invoke-direct {v1, v3, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const-string v3, "video/mp4"

    new-array v4, v4, [B

    fill-array-data v4, :array_20c

    invoke-direct {v1, v3, v4, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->b:[Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 156
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->b:[Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13e
    if-ge v2, v1, :cond_165

    aget-object v5, v0, v2

    .line 157
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->a()Z

    move-result v6

    if-eqz v6, :cond_152

    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->d()I

    move-result v6

    if-le v6, v3, :cond_152

    .line 158
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->d()I

    move-result v3

    .line 160
    :cond_152
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->b()Z

    move-result v6

    if-eqz v6, :cond_162

    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->e()I

    move-result v6

    if-le v6, v4, :cond_162

    .line 161
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->e()I

    move-result v4

    :cond_162
    add-int/lit8 v2, v2, 0x1

    goto :goto_13e

    .line 164
    :cond_165
    sput v3, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->c:I

    .line 165
    sput v4, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->d:I

    return-void

    :array_16a
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_170
    .array-data 1
        -0x1t
        -0x27t
    .end array-data

    nop

    :array_176
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_17c
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_182
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_18a
    .array-data 1
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
    .end array-data

    nop

    :array_192
    .array-data 1
        0x0t
        0x0t
        0x10t
        0x0t
        0x0t
    .end array-data

    nop

    :array_19a
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x37t
        0x61t
    .end array-data

    nop

    :array_1a2
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x39t
        0x61t
    .end array-data

    nop

    :array_1aa
    .array-data 1
        0x42t
        0x4dt
    .end array-data

    nop

    :array_1b0
    .array-data 1
        0x4dt
        0x4dt
    .end array-data

    nop

    :array_1b6
    .array-data 1
        0x49t
        0x49t
    .end array-data

    nop

    :array_1bc
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x69t
        0x73t
        0x6ft
        0x6dt
        0x33t
        0x67t
        0x70t
        0x34t
    .end array-data

    :array_1c6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x66t
        0x74t
        0x79t
        0x70t
        0x69t
        0x73t
        0x6ft
        0x6dt
    .end array-data

    :array_1d0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x66t
        0x74t
        0x79t
        0x70t
        0x6dt
        0x70t
        0x34t
        0x32t
    .end array-data

    :array_1da
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x66t
        0x74t
        0x79t
        0x70t
        0x33t
        0x67t
        0x70t
    .end array-data

    :array_1e4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x66t
        0x74t
        0x79t
        0x70t
        0x33t
        0x67t
        0x70t
        0x34t
    .end array-data

    :array_1ee
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x14t
        0x66t
        0x74t
        0x79t
        0x70t
        0x71t
        0x74t
    .end array-data

    nop

    :array_1f8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x20t
        0x66t
        0x74t
        0x79t
        0x70t
        0x61t
        0x76t
        0x63t
        0x31t
    .end array-data

    :array_202
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x66t
        0x74t
        0x79t
        0x70t
        0x6dt
        0x70t
        0x34t
        0x32t
    .end array-data

    :array_20c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x20t
        0x66t
        0x74t
        0x79t
        0x70t
        0x69t
        0x73t
        0x6ft
        0x6dt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 170
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const-string v0, "FileMimeUtils"

    const-string v1, "rawGetMimeType"

    .line 172
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const/16 v1, 0x2f

    .line 181
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x2e

    .line 182
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-le v2, v1, :cond_1c

    add-int/lit8 v2, v2, 0x1

    .line 184
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->c:I

    new-array p0, p0, [B

    .line 193
    sget v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->d:I

    new-array v1, v1, [B

    const-wide/16 v2, 0x0

    .line 196
    :try_start_11
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 197
    array-length v4, p0

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 204
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 205
    array-length v8, v1

    int-to-long v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    cmp-long v10, v8, v2

    const/4 v11, 0x0

    if-ltz v10, :cond_ab

    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v8, v12

    if-lez v12, :cond_32

    goto/16 :goto_ab

    :cond_32
    if-nez v10, :cond_48

    const-string p0, "FileMimeUtils"

    const-string v1, "endBufferedLength is 0, just return null mime type"

    .line 214
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_d3

    .line 248
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception p0

    const-string v0, "FileMimeUtils"

    const-string v1, "close image file failed."

    .line 250
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return-object v11

    :cond_48
    const/4 v10, 0x0

    sub-long/2addr v6, v8

    .line 218
    :try_start_4a
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v6, v8

    .line 221
    invoke-virtual {v0, v1, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v8, v6

    if-eqz v6, :cond_58

    goto :goto_59

    :cond_58
    move-wide v2, v8

    .line 225
    :goto_59
    sget-object v6, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->b:[Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    array-length v7, v6

    :goto_5c
    if-ge v5, v7, :cond_9e

    aget-object v8, v6, v5

    .line 226
    invoke-virtual {v8}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->a()Z

    move-result v9

    if-eqz v9, :cond_74

    .line 227
    invoke-virtual {v8}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->d()I

    move-result v9

    if-ge v4, v9, :cond_6d

    goto :goto_8a

    .line 230
    :cond_6d
    invoke-virtual {v8, p0}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->a([B)Z

    move-result v9

    if-nez v9, :cond_74

    goto :goto_8a

    .line 235
    :cond_74
    invoke-virtual {v8}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->b()Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 236
    invoke-virtual {v8}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->e()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v2, v9

    if-gez v9, :cond_84

    goto :goto_8a

    .line 239
    :cond_84
    invoke-virtual {v8, v1}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->b([B)Z

    move-result v9

    if-nez v9, :cond_8d

    :goto_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 244
    :cond_8d
    invoke-virtual {v8}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->c()Ljava/lang/String;

    move-result-object p0
    :try_end_91
    .catchall {:try_start_4a .. :try_end_91} :catchall_d3

    .line 248
    :try_start_91
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_9d

    :catch_95
    move-exception v0

    const-string v1, "FileMimeUtils"

    const-string v2, "close image file failed."

    .line 250
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9d
    return-object p0

    .line 248
    :cond_9e
    :try_start_9e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_aa

    :catch_a2
    move-exception p0

    const-string v0, "FileMimeUtils"

    const-string v1, "close image file failed."

    .line 250
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_aa
    return-object v11

    :cond_ab
    :goto_ab
    :try_start_ab
    const-string p0, "FileMimeUtils"

    const-string v1, "unexpected error, endBufferedLength: %d, file length: %d"

    const/4 v2, 0x2

    .line 208
    new-array v2, v2, [Ljava/lang/Object;

    .line 210
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 208
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_ab .. :try_end_c6} :catchall_d3

    .line 248
    :try_start_c6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_d2

    :catch_ca
    move-exception p0

    const-string v0, "FileMimeUtils"

    const-string v1, "close image file failed."

    .line 250
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d2
    return-object v11

    :catchall_d3
    move-exception p0

    .line 248
    :try_start_d4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_e0

    :catch_d8
    move-exception v0

    const-string v1, "FileMimeUtils"

    const-string v2, "close image file failed."

    .line 250
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    :goto_e0
    throw p0
.end method
