.class public Lcn/kuaipan/android/kss/KssMaster;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/KssMaster$IRemote;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/kuaipan/android/kss/KssMaster$IRemote;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/kuaipan/android/kss/d;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final W:Lcn/kuaipan/android/kss/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/kss/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

.field private final Y:Lcn/kuaipan/android/kss/upload/c;

.field private final Z:Lcn/kuaipan/android/kss/download/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/kuaipan/android/kss/c;Lcn/kuaipan/android/kss/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/kuaipan/android/kss/c<",
            "-TT;>;",
            "Lcn/kuaipan/android/kss/b;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcn/kuaipan/android/kss/KssMaster;->W:Lcn/kuaipan/android/kss/c;

    if-nez p3, :cond_9

    const/4 p2, 0x0

    goto :goto_e

    .line 42
    :cond_9
    new-instance p2, Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-direct {p2, p1, p3}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;-><init>(Landroid/content/Context;Lcn/kuaipan/android/kss/b;)V

    :goto_e
    iput-object p2, p0, Lcn/kuaipan/android/kss/KssMaster;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    .line 44
    new-instance p2, Lcn/kuaipan/android/http/g;

    invoke-direct {p2, p1}, Lcn/kuaipan/android/http/g;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x4

    .line 45
    invoke-static {p1}, Lcn/kuaipan/android/kss/KssMaster;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcn/kuaipan/android/http/g;->a(ILjava/lang/String;)V

    .line 47
    new-instance p1, Lcn/kuaipan/android/kss/upload/c;

    iget-object p3, p0, Lcn/kuaipan/android/kss/KssMaster;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/kss/upload/c;-><init>(Lcn/kuaipan/android/http/g;Lcn/kuaipan/android/kss/upload/UploadTaskStore;)V

    iput-object p1, p0, Lcn/kuaipan/android/kss/KssMaster;->Y:Lcn/kuaipan/android/kss/upload/c;

    .line 48
    new-instance p1, Lcn/kuaipan/android/kss/download/c;

    invoke-direct {p1, p2}, Lcn/kuaipan/android/kss/download/c;-><init>(Lcn/kuaipan/android/http/g;)V

    iput-object p1, p0, Lcn/kuaipan/android/kss/KssMaster;->Z:Lcn/kuaipan/android/kss/download/c;

    return-void
.end method

.method private static a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)I
    .registers 4

    if-nez p2, :cond_5

    const-string p2, ""

    goto :goto_9

    .line 163
    :cond_5
    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a()Ljava/lang/String;

    move-result-object p2

    .line 165
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-interface {p1}, Lcn/kuaipan/android/kss/KssMaster$IRemote;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method private a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;I)Lcn/kuaipan/android/kss/upload/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lcn/kuaipan/android/kss/upload/UploadFileInfo;",
            "I)",
            "Lcn/kuaipan/android/kss/upload/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/c;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcn/kuaipan/android/kss/KssMaster;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/kss/KssMaster;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p4}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->b(I)Lcn/kuaipan/android/kss/upload/b;

    move-result-object v0

    :goto_c
    if-nez v0, :cond_22

    .line 137
    iget-object v0, p0, Lcn/kuaipan/android/kss/KssMaster;->W:Lcn/kuaipan/android/kss/c;

    invoke-interface {v0, p1, p2, p3}, Lcn/kuaipan/android/kss/c;->a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object p1

    .line 140
    new-instance v0, Lcn/kuaipan/android/kss/upload/b;

    invoke-direct {v0, p3, p1}, Lcn/kuaipan/android/kss/upload/b;-><init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;)V

    .line 141
    iget-object p1, p0, Lcn/kuaipan/android/kss/KssMaster;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-eqz p1, :cond_22

    .line 142
    iget-object p1, p0, Lcn/kuaipan/android/kss/KssMaster;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {p1, p4, v0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(ILcn/kuaipan/android/kss/upload/b;)V

    :cond_22
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "KssRC4/1.0 %s/%s S3SDK/%s"

    const/4 v1, 0x3

    .line 158
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Lcn/kuaipan/android/utils/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "0.9.0a"

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcn/kuaipan/android/kss/KssMaster;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_5

    return-void

    .line 153
    :cond_5
    iget-object v0, p0, Lcn/kuaipan/android/kss/KssMaster;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Lcn/kuaipan/android/kss/KssMaster$IRemote;Ljava/io/File;Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcn/kuaipan/android/http/IKscTransferListener;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/c;
        }
    .end annotation

    if-eqz p2, :cond_3a

    .line 113
    iget-object v0, p0, Lcn/kuaipan/android/kss/KssMaster;->W:Lcn/kuaipan/android/kss/c;

    invoke-interface {v0, p1}, Lcn/kuaipan/android/kss/c;->a(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lcn/kuaipan/android/kss/IKssDownloadRequestResult;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 115
    invoke-interface {p1}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->a()I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 125
    :cond_11
    iget-object v0, p0, Lcn/kuaipan/android/kss/KssMaster;->Z:Lcn/kuaipan/android/kss/download/c;

    invoke-virtual {v0, p2, p4, p3, p1}, Lcn/kuaipan/android/kss/download/c;->a(Ljava/io/File;ZLcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/kss/IKssDownloadRequestResult;)V

    return-void

    :cond_17
    :goto_17
    if-nez p1, :cond_1b

    const/4 p1, 0x0

    goto :goto_1f

    .line 116
    :cond_1b
    invoke-interface {p1}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->b()Ljava/lang/String;

    move-result-object p1

    .line 117
    :goto_1f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 118
    new-instance p1, Lcn/kuaipan/android/a/e;

    const p2, 0x7acd8

    const-string p3, "Unknow error when requestDownload."

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p1

    .line 121
    :cond_30
    new-instance p2, Lcn/kuaipan/android/a/j;

    const/16 p3, 0xc8

    const-string p4, "Failed on requestDownload"

    invoke-direct {p2, p3, p1, p4}, Lcn/kuaipan/android/a/j;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 110
    :cond_3a
    new-instance p1, Lcn/kuaipan/android/a/f;

    const p2, 0x7a123

    const-string p3, "Save path can\'t be null."

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/io/File;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcn/kuaipan/android/kss/KssMaster;->Z:Lcn/kuaipan/android/kss/download/c;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/download/c;->a(Ljava/io/File;)V

    return-void
.end method

.method public a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lcn/kuaipan/android/http/IKscTransferListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/c;
        }
    .end annotation

    if-eqz p1, :cond_7e

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7e

    .line 59
    invoke-static {p1}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a(Ljava/io/File;)Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    move-result-object v0

    .line 60
    invoke-static {p1, p2, v0}, Lcn/kuaipan/android/kss/KssMaster;->a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v2, v3

    const/4 v4, 0x0

    .line 65
    :goto_24
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_78

    if-eqz v2, :cond_32

    .line 69
    invoke-virtual {v2}, Lcn/kuaipan/android/kss/upload/b;->f()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 70
    :cond_32
    invoke-direct {p0, p1, p2, v0, v1}, Lcn/kuaipan/android/kss/KssMaster;->a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;I)Lcn/kuaipan/android/kss/upload/b;

    move-result-object v2

    :cond_36
    if-nez v2, :cond_49

    if-eqz p3, :cond_67

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-interface {p3, v0, v1}, Lcn/kuaipan/android/http/IKscTransferListener;->a(J)V

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-interface {p3, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->c(J)V

    goto :goto_67

    .line 79
    :cond_49
    invoke-virtual {v2}, Lcn/kuaipan/android/kss/upload/b;->c()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 82
    :try_start_4f
    iget-object v5, p0, Lcn/kuaipan/android/kss/KssMaster;->W:Lcn/kuaipan/android/kss/c;

    invoke-interface {v5, p1, p2, v2}, Lcn/kuaipan/android/kss/c;->a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/b;)V

    if-eqz p3, :cond_64

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-interface {p3, v5, v6}, Lcn/kuaipan/android/http/IKscTransferListener;->a(J)V

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-interface {p3, v5, v6}, Lcn/kuaipan/android/http/IKscTransferListener;->c(J)V

    .line 88
    :cond_64
    invoke-direct {p0, v1}, Lcn/kuaipan/android/kss/KssMaster;->a(I)V
    :try_end_67
    .catch Lcom/xiaomi/opensdk/a/c; {:try_start_4f .. :try_end_67} :catch_68

    :cond_67
    :goto_67
    return-void

    :catch_68
    move-exception v2

    if-nez v4, :cond_71

    .line 92
    invoke-direct {p0, v1}, Lcn/kuaipan/android/kss/KssMaster;->a(I)V

    const/4 v4, 0x1

    move-object v2, v3

    goto :goto_24

    .line 97
    :cond_71
    throw v2

    .line 101
    :cond_72
    iget-object v5, p0, Lcn/kuaipan/android/kss/KssMaster;->Y:Lcn/kuaipan/android/kss/upload/c;

    invoke-virtual {v5, p1, p3, v1, v2}, Lcn/kuaipan/android/kss/upload/c;->a(Ljava/io/File;Lcn/kuaipan/android/http/IKscTransferListener;ILcn/kuaipan/android/kss/upload/b;)V

    goto :goto_24

    .line 66
    :cond_78
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 55
    :cond_7e
    new-instance p2, Lcn/kuaipan/android/a/f;

    const p3, 0x7a123

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a exist file."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw p2
.end method
