.class public Lcom/miui/vsimcore/service/VsimOnchipService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/service/VsimOnchipService$VsimRemoteError;
    }
.end annotation


# static fields
.field public static final EVENT_REQ:I = 0x1

.field public static final EVENT_RESP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VSC-VsimOnchipService"

.field private static mCb:Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;


# instance fields
.field private mAuthThread:Landroid/os/HandlerThread;

.field private final mBinder:Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "auth_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/vsimcore/service/VsimOnchipService;->mAuthThread:Landroid/os/HandlerThread;

    .line 58
    new-instance v0, Lcom/miui/vsimcore/service/VsimOnchipService$1;

    invoke-direct {v0, p0}, Lcom/miui/vsimcore/service/VsimOnchipService$1;-><init>(Lcom/miui/vsimcore/service/VsimOnchipService;)V

    iput-object v0, p0, Lcom/miui/vsimcore/service/VsimOnchipService;->mBinder:Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/vsimcore/service/VsimOnchipService;)Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/miui/vsimcore/service/VsimOnchipService;->mBinder:Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;)Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;
    .registers 1

    .line 19
    sput-object p0, Lcom/miui/vsimcore/service/VsimOnchipService;->mCb:Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/vsimcore/service/VsimOnchipService;)Landroid/os/HandlerThread;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/miui/vsimcore/service/VsimOnchipService;->mAuthThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static authUsim([B)[B
    .registers 3

    .line 115
    :try_start_0
    sget-object v0, Lcom/miui/vsimcore/service/VsimOnchipService;->mCb:Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;

    invoke-interface {v0, p0}, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;->authUsim([B)[B

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    const-string v0, "VSC-VsimOnchipService"

    const-string v1, "failed to call authUsim"

    .line 117
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCardData(Ljava/lang/String;)[B
    .registers 5

    .line 106
    :try_start_0
    sget-object v0, Lcom/miui/vsimcore/service/VsimOnchipService;->mCb:Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;

    invoke-interface {v0, p0}, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;->getCardData(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "VSC-VsimOnchipService"

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to getCardData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string p1, "VSC-VsimOnchipService"

    const-string v0, "onBind()"

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lcom/miui/vsimcore/service/VsimOnchipService;->mBinder:Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "VSC-VsimOnchipService"

    const-string v1, "onCreate()"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "VSC-VsimOnchipService"

    const-string v1, "onDestroy()"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/miui/vsimcore/service/VsimOnchipService;->stopSelf()V

    .line 55
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
