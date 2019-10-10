.class public Lcom/miui/vsimcore/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:[C = null

.field protected static b:Ljava/security/MessageDigest; = null

.field private static final c:Ljava/lang/String; = "VS-MD5FileUtil"

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/vsimcore/utils/e;->d:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 23
    new-array v0, v0, [C

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/miui/vsimcore/utils/e;->a:[C

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/miui/vsimcore/utils/e;->b:Ljava/security/MessageDigest;

    :try_start_13
    const-string v0, "MD5"

    .line 29
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/miui/vsimcore/utils/e;->b:Ljava/security/MessageDigest;
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void

    :array_1c
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 41
    :cond_9
    sget-object v0, Lcom/miui/vsimcore/utils/e;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 43
    :try_start_d
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_68
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_59
    .catchall {:try_start_d .. :try_end_12} :catchall_55

    .line 44
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_16} :catch_52
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_4f
    .catchall {:try_start_12 .. :try_end_16} :catchall_76

    .line 45
    :try_start_16
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 46
    sget-object v3, Lcom/miui/vsimcore/utils/e;->b:Ljava/security/MessageDigest;

    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 47
    sget-object p0, Lcom/miui/vsimcore/utils/e;->b:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/miui/vsimcore/utils/e;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_32} :catch_4b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_32} :catch_47
    .catchall {:try_start_16 .. :try_end_32} :catchall_45

    .line 48
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_35} :catch_41
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_3d
    .catchall {:try_start_32 .. :try_end_35} :catchall_45

    .line 54
    :try_start_35
    invoke-static {v9}, Lcom/miui/vsimcore/utils/d;->a(Ljava/io/Closeable;)V

    .line 55
    invoke-static {v2}, Lcom/miui/vsimcore/utils/d;->a(Ljava/io/Closeable;)V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_7f

    move-object v3, p0

    goto :goto_74

    :catch_3d
    move-exception v1

    move-object v3, p0

    move-object p0, v1

    goto :goto_49

    :catch_41
    move-exception v1

    move-object v3, p0

    move-object p0, v1

    goto :goto_4d

    :catchall_45
    move-exception p0

    goto :goto_78

    :catch_47
    move-exception p0

    move-object v3, v1

    :goto_49
    move-object v1, v9

    goto :goto_5c

    :catch_4b
    move-exception p0

    move-object v3, v1

    :goto_4d
    move-object v1, v9

    goto :goto_6b

    :catch_4f
    move-exception p0

    move-object v3, v1

    goto :goto_5c

    :catch_52
    move-exception p0

    move-object v3, v1

    goto :goto_6b

    :catchall_55
    move-exception p0

    move-object v2, v1

    move-object v9, v2

    goto :goto_78

    :catch_59
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_5c
    :try_start_5c
    const-string v4, "VS-MD5FileUtil"

    .line 52
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_76

    .line 54
    :try_start_61
    invoke-static {v1}, Lcom/miui/vsimcore/utils/d;->a(Ljava/io/Closeable;)V

    .line 55
    :goto_64
    invoke-static {v2}, Lcom/miui/vsimcore/utils/d;->a(Ljava/io/Closeable;)V
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_7f

    goto :goto_74

    :catch_68
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_6b
    :try_start_6b
    const-string v4, "VS-MD5FileUtil"

    .line 50
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_76

    .line 54
    :try_start_70
    invoke-static {v1}, Lcom/miui/vsimcore/utils/d;->a(Ljava/io/Closeable;)V

    goto :goto_64

    .line 57
    :goto_74
    monitor-exit v0

    return-object v3

    :catchall_76
    move-exception p0

    move-object v9, v1

    .line 54
    :goto_78
    invoke-static {v9}, Lcom/miui/vsimcore/utils/d;->a(Ljava/io/Closeable;)V

    .line 55
    invoke-static {v2}, Lcom/miui/vsimcore/utils/d;->a(Ljava/io/Closeable;)V

    throw p0

    :catchall_7f
    move-exception p0

    .line 57
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_70 .. :try_end_81} :catchall_7f

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/miui/vsimcore/utils/e;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 2

    .line 70
    sget-object v0, Lcom/miui/vsimcore/utils/e;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 71
    sget-object p0, Lcom/miui/vsimcore/utils/e;->b:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/miui/vsimcore/utils/e;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([BII)Ljava/lang/String;
    .registers 5

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/2addr p2, p1

    :goto_8
    if-ge p1, p2, :cond_12

    .line 105
    aget-byte v1, p0, p1

    invoke-static {v1, v0}, Lcom/miui/vsimcore/utils/e;->a(BLjava/lang/StringBuffer;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 107
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(BLjava/lang/StringBuffer;)V
    .registers 4

    .line 111
    sget-object v0, Lcom/miui/vsimcore/utils/e;->a:[C

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    .line 112
    sget-object v1, Lcom/miui/vsimcore/utils/e;->a:[C

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v1, p0

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "SHA-1"

    .line 77
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 79
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 83
    :goto_18
    array-length v3, p0

    if-ge v2, v3, :cond_33

    .line 84
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2d

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 88
    :cond_2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 90
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static b([B)Ljava/lang/String;
    .registers 3

    .line 98
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/vsimcore/utils/e;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
