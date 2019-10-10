.class public Lcn/kuaipan/android/kss/download/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "KInfo"

.field private static final b:Ljava/lang/String; = "data"

.field private static final c:Ljava/lang/String; = "hash"

.field private static final d:Ljava/lang/String; = "load_map"

.field private static final e:Ljava/lang/String; = "."

.field private static final f:Ljava/lang/String; = ".kinfo"


# instance fields
.field private final g:Ljava/io/File;

.field private final h:Landroid/os/Bundle;

.field private final i:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/a;->g:Ljava/io/File;

    .line 32
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcn/kuaipan/android/kss/download/a;->h:Landroid/os/Bundle;

    .line 33
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    iput-object p1, p0, Lcn/kuaipan/android/kss/download/a;->i:Ljava/util/Properties;

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".kinfo"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "."

    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    :try_start_9
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-static {p0, v1}, Lcn/kuaipan/android/utils/Base64;->b([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_18

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method private static b(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0}, Lcn/kuaipan/android/utils/Base64;->a(Ljava/lang/String;I)[B

    move-result-object p0

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 132
    :try_start_9
    array-length v2, p0

    invoke-virtual {v1, p0, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 133
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 134
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_1c
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 37
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/a;->h:Landroid/os/Bundle;

    const-string v1, "hash"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/a;->h:Landroid/os/Bundle;

    const-string v1, "hash"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/kuaipan/android/kss/download/LoadMap;)Z
    .registers 4

    .line 45
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/a;->h:Landroid/os/Bundle;

    const-string v1, "load_map"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcn/kuaipan/android/kss/download/LoadMap;->a(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public b(Lcn/kuaipan/android/kss/download/LoadMap;)V
    .registers 4

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-virtual {p1, v0}, Lcn/kuaipan/android/kss/download/LoadMap;->b(Landroid/os/Bundle;)V

    .line 52
    iget-object p1, p0, Lcn/kuaipan/android/kss/download/a;->h:Landroid/os/Bundle;

    const-string v1, "load_map"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public c()V
    .registers 7

    .line 60
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/a;->i:Ljava/util/Properties;

    const-string v1, "data"

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/a;->h:Landroid/os/Bundle;

    invoke-static {v2}, Lcn/kuaipan/android/kss/download/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 64
    :try_start_e
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/a;->g:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_28
    .catchall {:try_start_e .. :try_end_15} :catchall_23

    .line 65
    :try_start_15
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/a;->i:Ljava/util/Properties;

    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_21
    .catchall {:try_start_15 .. :try_end_1d} :catchall_46

    .line 71
    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_45

    goto :goto_45

    :catch_21
    move-exception v0

    goto :goto_2c

    :catchall_23
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_47

    :catch_28
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2c
    :try_start_2c
    const-string v2, "KInfo"

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed save kinfo to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/kuaipan/android/kss/download/a;->g:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_46

    goto :goto_1d

    :catch_45
    :goto_45
    return-void

    :catchall_46
    move-exception v0

    .line 71
    :goto_47
    :try_start_47
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_4a

    .line 74
    :catch_4a
    throw v0
.end method

.method public d()V
    .registers 7

    .line 79
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 85
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/a;->g:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_3d
    .catchall {:try_start_a .. :try_end_11} :catchall_38

    .line 86
    :try_start_11
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/a;->i:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 87
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/a;->i:Ljava/util/Properties;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 89
    invoke-static {v0}, Lcn/kuaipan/android/kss/download/a;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/a;->h:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 91
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/a;->h:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_32} :catch_36
    .catchall {:try_start_11 .. :try_end_32} :catchall_5b

    .line 97
    :cond_32
    :goto_32
    :try_start_32
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_5a

    goto :goto_5a

    :catch_36
    move-exception v0

    goto :goto_41

    :catchall_38
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5c

    :catch_3d
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_41
    :try_start_41
    const-string v2, "KInfo"

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed load kinfo from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/kuaipan/android/kss/download/a;->g:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_5b

    goto :goto_32

    :catch_5a
    :goto_5a
    return-void

    :catchall_5b
    move-exception v0

    .line 97
    :goto_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_5f

    .line 100
    :catch_5f
    throw v0
.end method
