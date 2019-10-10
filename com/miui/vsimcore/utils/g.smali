.class public Lcom/miui/vsimcore/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = -0x1

.field private static final b:Ljava/lang/String; = "VS-RootUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .registers 3

    const-string v0, "VS-RootUtils"

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/vsimcore/utils/g;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "method2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {}, Lcom/miui/vsimcore/utils/g;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "method3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {}, Lcom/miui/vsimcore/utils/g;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/miui/vsimcore/utils/g;->c()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {}, Lcom/miui/vsimcore/utils/g;->d()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {}, Lcom/miui/vsimcore/utils/g;->e()Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_51

    :cond_4f
    const/4 v0, 0x0

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v0, 0x1

    :goto_52
    return v0
.end method

.method public static b()I
    .registers 2

    .line 27
    sget v0, Lcom/miui/vsimcore/utils/g;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 28
    sget v0, Lcom/miui/vsimcore/utils/g;->a:I

    return v0

    .line 30
    :cond_8
    invoke-static {}, Lcom/miui/vsimcore/utils/g;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/vsimcore/utils/g;->a:I

    .line 31
    sget v0, Lcom/miui/vsimcore/utils/g;->a:I

    return v0
.end method

.method private static c()Z
    .registers 1

    .line 36
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method private static d()Z
    .registers 10

    const-string v0, "/sbin/su"

    const-string v1, "/system/bin/su"

    const-string v2, "/system/xbin/su"

    const-string v3, "/data/local/xbin/su"

    const-string v4, "/data/local/bin/su"

    const-string v5, "/system/sd/xbin/su"

    const-string v6, "/system/bin/failsafe/su"

    const-string v7, "/data/local/su"

    const-string v8, "/system/usr/we-need-root/su"

    const-string v9, "/system/bin/.ext/su"

    .line 41
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 43
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_2f

    aget-object v4, v0, v3

    .line 44
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v0, 0x1

    return v0

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2f
    return v2
.end method

.method private static e()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "/system/xbin/which"

    const-string v4, "su"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_3d
    .catchall {:try_start_2 .. :try_end_12} :catchall_35

    .line 53
    :try_start_12
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_24} :catch_3e
    .catchall {:try_start_12 .. :try_end_24} :catchall_33

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    if-eqz v2, :cond_2c

    .line 59
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_2c
    return v0

    :cond_2d
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_32
    return v0

    :catchall_33
    move-exception v0

    goto :goto_37

    :catchall_35
    move-exception v0

    move-object v2, v1

    :goto_37
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_3c
    throw v0

    :catch_3d
    move-object v2, v1

    :catch_3e
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_43
    return v0
.end method
