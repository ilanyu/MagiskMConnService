.class public Lcom/miui/vsimcore/service/AuthQcUIMService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;
    }
.end annotation


# static fields
.field private static final DISABLE_VIRTUALSIM_ACTION:Ljava/lang/String; = "com.miui.vsimcore.disable.virtualsim.action"

.field private static TAG:Ljava/lang/String; = "VSC-AuthQcUIMService"

.field public static final UIM_REMOTE_STATUS_CONN_UNAVAILABLE:I = 0x0

.field private static final VIRTUAL_SIM_SLOT_1:I = 0x0

.field private static final VIRTUAL_SIM_SLOT_2:I = 0x1

.field private static final mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

.field private static mConnection:Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;

.field private static mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

.field private static mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Lcom/miui/vsimcore/service/AuthQcUIMService$1;

    invoke-direct {v0}, Lcom/miui/vsimcore/service/AuthQcUIMService$1;-><init>()V

    sput-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    .registers 1

    .line 22
    sget-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    .registers 1

    .line 22
    sput-object p0, Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    return-object p0
.end method

.method static synthetic access$200()Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;
    .registers 1

    .line 22
    sget-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/vsimcore/service/AuthQcUIMService;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/miui/vsimcore/service/AuthQcUIMService;->releaseService()V

    return-void
.end method

.method private bindUimRemoteClientService()I
    .registers 5

    .line 63
    sget-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to the mService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->mConnection:Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;

    if-nez v0, :cond_27

    .line 65
    new-instance v0, Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;

    invoke-direct {v0, p0}, Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;-><init>(Lcom/miui/vsimcore/service/AuthQcUIMService;)V

    sput-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->mConnection:Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;

    .line 67
    :cond_27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.qualcomm.uimremoteclient"

    const-string v3, "com.qualcomm.uimremoteclient.UimRemoteClientService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v1

    sget-object v2, Lcom/miui/vsimcore/service/AuthQcUIMService;->mConnection:Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/vsimcore/base/VsimCoreApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 71
    sget-object v1, Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind UimRemoteClientService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_54

    const-string v3, "successed"

    goto :goto_56

    :cond_54
    const-string v3, "failed"

    :goto_56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_64

    const/4 v0, -0x1

    return v0

    :cond_64
    const/4 v0, 0x0

    return v0
.end method

.method public static disableVirtualSim(Landroid/content/Context;)V
    .registers 3

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    const-class v1, Lcom/miui/vsimcore/service/AuthQcUIMService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.vsimcore.disable.virtualsim.action"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static getSlotId()I
    .registers 1

    .line 109
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private releaseService()V
    .registers 6

    .line 82
    sget-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;

    const-string v1, "releaseService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 84
    :try_start_8
    sget-object v1, Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    if-eqz v1, :cond_45

    .line 85
    sget-object v1, Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    sget v2, Lcom/miui/vsimcore/service/AuthQcUIMService;->mSlotId:I

    const/4 v3, 0x0

    new-array v4, v3, [B

    invoke-interface {v1, v2, v3, v4, v3}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;->uimRemoteEvent(II[BI)I

    move-result v1

    .line 86
    sget-object v2, Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uimRemoteEvent() UIM_REMOTE_STATUS_CONN_UNAVAILABLE returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slotId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/vsimcore/service/AuthQcUIMService;->mSlotId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v1, Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    sget-object v2, Lcom/miui/vsimcore/service/AuthQcUIMService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    invoke-interface {v1, v2}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;->deregisterCallback(Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;)I

    .line 88
    sput-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    :cond_45
    :goto_45
    sget-object v1, Lcom/miui/vsimcore/service/AuthQcUIMService;->mConnection:Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;

    if-eqz v1, :cond_54

    .line 94
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v1

    sget-object v2, Lcom/miui/vsimcore/service/AuthQcUIMService;->mConnection:Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;

    invoke-virtual {v1, v2}, Lcom/miui/vsimcore/base/VsimCoreApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 95
    sput-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->mConnection:Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;

    .line 97
    :cond_54
    invoke-virtual {p0}, Lcom/miui/vsimcore/service/AuthQcUIMService;->stopSelf()V

    return-void
.end method

.method private unbindUimRemoteClientService()V
    .registers 2

    .line 101
    sget-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    if-nez v0, :cond_8

    .line 102
    invoke-direct {p0}, Lcom/miui/vsimcore/service/AuthQcUIMService;->bindUimRemoteClientService()I

    goto :goto_b

    .line 104
    :cond_8
    invoke-direct {p0}, Lcom/miui/vsimcore/service/AuthQcUIMService;->releaseService()V

    :goto_b
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 35
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    sget-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 59
    sget-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    .line 41
    sget-object v0, Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " startId"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_40

    const-string p2, "com.miui.vsimcore.disable.virtualsim.action"

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 43
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->getSlotId()I

    move-result p1

    sput p1, Lcom/miui/vsimcore/service/AuthQcUIMService;->mSlotId:I

    .line 44
    invoke-direct {p0}, Lcom/miui/vsimcore/service/AuthQcUIMService;->unbindUimRemoteClientService()V

    .line 46
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->h()V

    :cond_40
    const/4 p1, 0x1

    return p1
.end method
