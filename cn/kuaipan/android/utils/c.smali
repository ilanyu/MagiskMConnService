.class public Lcn/kuaipan/android/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "FileUtils"

.field private static final b:Ljava/io/File;

.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/io/File;

.field private static e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 19
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcn/kuaipan/android/utils/c;->b:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;III)I
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.FileUtils"

    .line 299
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setPermissions"

    const/4 v3, 0x4

    .line 300
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 v4, 0x1

    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    .line 300
    invoke-static {v1, v2, v3}, Lcn/kuaipan/android/utils/JavaCalls;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    goto :goto_45

    :catch_2e
    const-string p1, "FileUtils"

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed set Permissions for file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_45
    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .registers 5

    .line 35
    invoke-static {p0, p2}, Lcn/kuaipan/android/utils/c;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_8

    return-object p2

    .line 39
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_39

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_39

    :cond_22
    const-string p0, "FileUtils"

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create cache directory:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_39
    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/io/File;
    .registers 3

    const/4 v0, 0x1

    .line 51
    invoke-static {p0, p1, v0}, Lcn/kuaipan/android/utils/c;->a(Landroid/content/Context;ZZ)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ZZ)Ljava/io/File;
    .registers 3

    if-eqz p1, :cond_7

    .line 57
    invoke-static {p0, p2}, Lcn/kuaipan/android/utils/c;->b(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    goto :goto_b

    .line 59
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 23
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcn/kuaipan/android/utils/c;->b:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "cache"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_29

    .line 220
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_27

    const/16 v0, 0x2000

    .line 221
    :try_start_10
    new-array v0, v0, [B

    .line 224
    :goto_12
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1d

    const/4 v3, 0x0

    .line 225
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_24

    goto :goto_12

    .line 229
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_20

    .line 234
    :catch_20
    :try_start_20
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_23

    :catch_23
    return-void

    :catchall_24
    move-exception p0

    move-object v0, p1

    goto :goto_2b

    :catchall_27
    move-exception p0

    goto :goto_2b

    :catchall_29
    move-exception p0

    move-object v1, v0

    .line 229
    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_2e

    .line 234
    :catch_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_31

    .line 236
    :catch_31
    throw p0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_2e

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2e

    .line 74
    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_17

    return v0

    .line 80
    :cond_17
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_1b
    if-ge v3, v1, :cond_2d

    aget-object v5, p0, v3

    .line 81
    invoke-static {v5}, Lcn/kuaipan/android/utils/c;->b(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_29

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2d
    return v4

    :cond_2e
    :goto_2e
    return v0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .registers 7

    .line 99
    invoke-static {p0, p1}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 104
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    return v2

    .line 108
    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 113
    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_4d

    .line 118
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 119
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_3e

    if-eqz v0, :cond_3f

    .line 121
    :try_start_3a
    invoke-virtual {p1, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3f

    goto :goto_3f

    :catch_3e
    const/4 v0, 0x0

    :catch_3f
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_42

    return v1

    .line 131
    :cond_42
    invoke-static {p0, p1}, Lcn/kuaipan/android/utils/c;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 132
    invoke-static {p0}, Lcn/kuaipan/android/utils/c;->b(Ljava/io/File;)Z

    move-result v0

    :cond_4c
    return v0

    :cond_4d
    :goto_4d
    return v2
.end method

.method public static a(Ljava/io/File;Ljava/io/File;J)Z
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-gez v2, :cond_16

    .line 172
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p2

    goto :goto_16

    :catchall_d
    move-exception p2

    move-object v2, v4

    move-object v6, v2

    goto/16 :goto_df

    :catch_12
    move-object v2, v4

    move-object v6, v2

    goto/16 :goto_9e

    .line 173
    :cond_16
    :goto_16
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_12
    .catchall {:try_start_8 .. :try_end_29} :catchall_d

    cmp-long v2, p2, v6

    if-ltz v2, :cond_4a

    .line 196
    :try_start_2d
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_30

    .line 201
    :catch_30
    :try_start_30
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_33

    .line 205
    :catch_33
    :try_start_33
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_36

    .line 209
    :catch_36
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_49

    .line 210
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    :cond_49
    return v5

    .line 177
    :cond_4a
    :try_start_4a
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_12
    .catchall {:try_start_4a .. :try_end_4f} :catchall_d

    .line 178
    :try_start_4f
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_9d
    .catchall {:try_start_4f .. :try_end_54} :catchall_9a

    .line 179
    :try_start_54
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v7
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5c} :catch_9e
    .catchall {:try_start_54 .. :try_end_5c} :catchall_de

    const/16 v4, 0x2000

    .line 180
    :try_start_5e
    new-array v4, v4, [B

    .line 183
    :cond_60
    array-length v8, v4

    int-to-long v8, v8

    sub-long v10, p2, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v2, v4, v3, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_78

    .line 184
    invoke-virtual {v6, v4, v3, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_72} :catch_98
    .catchall {:try_start_5e .. :try_end_72} :catchall_95

    int-to-long v8, v8

    add-long/2addr v0, v8

    cmp-long v8, v0, p2

    if-ltz v8, :cond_60

    .line 196
    :cond_78
    :try_start_78
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_7b

    .line 201
    :catch_7b
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_7e

    .line 205
    :catch_7e
    :try_start_7e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_81

    .line 209
    :catch_81
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_94

    .line 210
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    :cond_94
    return v5

    :catchall_95
    move-exception p2

    move-object v4, v7

    goto :goto_df

    :catch_98
    move-object v4, v7

    goto :goto_9e

    :catchall_9a
    move-exception p2

    move-object v6, v4

    goto :goto_df

    :catch_9d
    move-object v6, v4

    :catch_9e
    :goto_9e
    :try_start_9e
    const-string p2, "FileUtils"

    .line 192
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed copy \""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" to \""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_9e .. :try_end_c1} :catchall_de

    .line 196
    :try_start_c1
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c4} :catch_c4

    .line 201
    :catch_c4
    :try_start_c4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c7} :catch_c7

    .line 205
    :catch_c7
    :try_start_c7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_ca} :catch_ca

    .line 209
    :catch_ca
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_dd

    .line 210
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    :cond_dd
    return v3

    :catchall_de
    move-exception p2

    .line 196
    :goto_df
    :try_start_df
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_e2} :catch_e2

    .line 201
    :catch_e2
    :try_start_e2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e5} :catch_e5

    .line 205
    :catch_e5
    :try_start_e5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_e8} :catch_e8

    .line 209
    :catch_e8
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-nez p3, :cond_fb

    .line 210
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_fb
    throw p2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    .line 316
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_18
    if-eqz p0, :cond_27

    .line 320
    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 v1, 0x1

    goto :goto_27

    .line 324
    :cond_22
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_26} :catch_27

    goto :goto_18

    :catch_27
    :cond_27
    :goto_27
    return v1

    :cond_28
    :goto_28
    return v1
.end method

.method public static b(Landroid/content/Context;Z)Ljava/io/File;
    .registers 5

    .line 258
    sget-object v0, Lcn/kuaipan/android/utils/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    sget-object v1, Lcn/kuaipan/android/utils/c;->d:Ljava/io/File;

    if-nez v1, :cond_11

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/kuaipan/android/utils/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcn/kuaipan/android/utils/c;->d:Ljava/io/File;

    .line 262
    :cond_11
    sget-object p0, Lcn/kuaipan/android/utils/c;->d:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_4a

    if-nez p0, :cond_46

    .line 264
    :try_start_19
    new-instance p0, Ljava/io/File;

    sget-object v1, Lcn/kuaipan/android/utils/c;->b:Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_25} :catch_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_4a

    .line 267
    :catch_25
    :try_start_25
    sget-object p0, Lcn/kuaipan/android/utils/c;->d:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    if-eqz p1, :cond_46

    .line 268
    sget-object p0, Lcn/kuaipan/android/utils/c;->d:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3c

    sget-object p0, Lcn/kuaipan/android/utils/c;->d:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_46

    :cond_3c
    const-string p0, "FileUtils"

    const-string p1, "Unable to create external cache directory"

    .line 269
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 270
    monitor-exit v0

    return-object p0

    .line 273
    :cond_46
    sget-object p0, Lcn/kuaipan/android/utils/c;->d:Ljava/io/File;

    monitor-exit v0

    return-object p0

    :catchall_4a
    move-exception p0

    .line 274
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_25 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 27
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcn/kuaipan/android/utils/c;->b:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "files"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_17

    .line 91
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 92
    invoke-static {p0}, Lcn/kuaipan/android/utils/c;->a(Ljava/io/File;)Z

    .line 95
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)Z
    .registers 8

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 143
    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_42

    .line 147
    :cond_23
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v0, :cond_40

    aget-object v3, p0, v2

    .line 148
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcn/kuaipan/android/utils/c;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3d

    return v1

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_40
    const/4 p0, 0x1

    return p0

    :cond_42
    :goto_42
    return v1

    .line 154
    :cond_43
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_50

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 159
    :cond_50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_70

    :cond_69
    const-wide/16 v0, -0x1

    .line 163
    invoke-static {p0, p1, v0, v1}, Lcn/kuaipan/android/utils/c;->a(Ljava/io/File;Ljava/io/File;J)Z

    move-result p0

    return p0

    :cond_70
    :goto_70
    return v1
.end method

.method public static c(Ljava/io/File;)J
    .registers 7

    if-eqz p0, :cond_28

    .line 241
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 244
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 246
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 247
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 249
    array-length v2, p0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_27

    aget-object v4, p0, v3

    .line 250
    invoke-static {v4}, Lcn/kuaipan/android/utils/c;->c(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_27
    return-wide v0

    :cond_28
    :goto_28
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;Z)Ljava/io/File;
    .registers 5

    .line 278
    sget-object v0, Lcn/kuaipan/android/utils/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    sget-object v1, Lcn/kuaipan/android/utils/c;->e:Ljava/io/File;

    if-nez v1, :cond_11

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/kuaipan/android/utils/c;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcn/kuaipan/android/utils/c;->e:Ljava/io/File;

    .line 282
    :cond_11
    sget-object p0, Lcn/kuaipan/android/utils/c;->e:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_3d

    if-nez p0, :cond_39

    .line 284
    :try_start_19
    new-instance p0, Ljava/io/File;

    sget-object v1, Lcn/kuaipan/android/utils/c;->b:Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_25} :catch_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_3d

    .line 287
    :catch_25
    :try_start_25
    sget-object p0, Lcn/kuaipan/android/utils/c;->e:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_39

    if-eqz p1, :cond_39

    const-string p0, "FileUtils"

    const-string p1, "Unable to create external cache directory"

    .line 288
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 289
    monitor-exit v0

    return-object p0

    .line 292
    :cond_39
    sget-object p0, Lcn/kuaipan/android/utils/c;->e:Ljava/io/File;

    monitor-exit v0

    return-object p0

    :catchall_3d
    move-exception p0

    .line 293
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_3d

    throw p0
.end method
