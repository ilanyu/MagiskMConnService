.class public Lcom/miui/vsimcore/service/DemandCallService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/service/DemandCallService$CmdBinder;
    }
.end annotation


# static fields
.field private static final ACCESSENTRYSERVICE:Ljava/lang/String; = "com.ucloudlink.refact.access.ui.AccessEntryService"

.field private static final TAG:Ljava/lang/String; = "VSC-DemandCallService"


# instance fields
.field private final CLIENT_PACKAGE:Ljava/lang/String;

.field private final CMD_ACQUIRE_NETWORK:Ljava/lang/String;

.field private final CMD_RELEASE_NETWORK:Ljava/lang/String;

.field private final MSG_ACQUIRE_NETWORK:I

.field private final MSG_CHACK_APP:I

.field private final MSG_RELEASE_NETWORK:I

.field private final RESULT_KEY:Ljava/lang/String;

.field private final RESULT_VALUE_LOST:Ljava/lang/String;

.field private final RESULT_VALUE_SUCCESS:Ljava/lang/String;

.field private clientCB:Lcom/miui/vsimcore/service/IDemandCallCB;

.field private final lock:Ljava/lang/Object;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mHandler:Landroid/os/Handler;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "CMD_ACQUIRE_NETWORK"

    .line 34
    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->CMD_ACQUIRE_NETWORK:Ljava/lang/String;

    const-string v0, "CMD_RELEASE_NETWORK"

    .line 35
    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->CMD_RELEASE_NETWORK:Ljava/lang/String;

    const-string v0, "RESULT_KEY"

    .line 37
    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->RESULT_KEY:Ljava/lang/String;

    const-string v0, "RESULT_VALUE_SUCCESS|"

    .line 41
    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->RESULT_VALUE_SUCCESS:Ljava/lang/String;

    const-string v0, "RESULT_VALUE_LOST"

    .line 42
    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->RESULT_VALUE_LOST:Ljava/lang/String;

    const-string v0, "com.xiaomi.mimobile.cloudsim"

    .line 44
    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->CLIENT_PACKAGE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->MSG_ACQUIRE_NETWORK:I

    const/4 v0, 0x2

    .line 47
    iput v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->MSG_RELEASE_NETWORK:I

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->clientCB:Lcom/miui/vsimcore/service/IDemandCallCB;

    .line 145
    new-instance v0, Lcom/miui/vsimcore/service/DemandCallService$1;

    invoke-direct {v0, p0}, Lcom/miui/vsimcore/service/DemandCallService$1;-><init>(Lcom/miui/vsimcore/service/DemandCallService;)V

    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v0, Lcom/miui/vsimcore/service/DemandCallService$2;

    invoke-direct {v0, p0}, Lcom/miui/vsimcore/service/DemandCallService$2;-><init>(Lcom/miui/vsimcore/service/DemandCallService;)V

    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v0, 0x3

    .line 224
    iput v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->MSG_CHACK_APP:I

    return-void
.end method

.method static synthetic access$100(Lcom/miui/vsimcore/service/DemandCallService;)Landroid/os/Handler;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/vsimcore/service/DemandCallService;Lcom/miui/vsimcore/service/IDemandCallCB;)Lcom/miui/vsimcore/service/IDemandCallCB;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService;->clientCB:Lcom/miui/vsimcore/service/IDemandCallCB;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/vsimcore/service/DemandCallService;Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/vsimcore/service/DemandCallService;->acquireNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/vsimcore/service/DemandCallService;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/miui/vsimcore/service/DemandCallService;->releaseNetwork()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/vsimcore/service/DemandCallService;Ljava/lang/String;)Z
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/vsimcore/service/DemandCallService;->checkAppisRun(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/miui/vsimcore/service/DemandCallService;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/miui/vsimcore/service/DemandCallService;->closeSolt()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/vsimcore/service/DemandCallService;)Ljava/lang/Object;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/miui/vsimcore/service/DemandCallService;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/vsimcore/service/DemandCallService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/miui/vsimcore/service/DemandCallService;->notifyToClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private acquireNetwork(Ljava/lang/String;)V
    .registers 4

    .line 121
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_22

    .line 124
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/miui/vsimcore/service/DemandCallService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_22
    return-void
.end method

.method private checkAppInstalled(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_30

    :cond_a
    const/4 v1, 0x0

    .line 252
    :try_start_b
    invoke-virtual {p0}, Lcom/miui/vsimcore/service/DemandCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_17} :catch_18

    goto :goto_1d

    :catch_18
    move-exception p1

    .line 254
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v1

    :goto_1d
    if-nez p1, :cond_27

    const-string p1, "VSC-DemandCallService"

    const-string v1, "checkAppInstalled false"

    .line 258
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_27
    const-string p1, "VSC-DemandCallService"

    const-string v0, "checkAppInstalled true"

    .line 261
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_30
    :goto_30
    return v0
.end method

.method private checkAppisRun(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4d

    .line 270
    :cond_a
    invoke-virtual {p0}, Lcom/miui/vsimcore/service/DemandCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    .line 271
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 273
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_24

    const-string p1, "VSC-DemandCallService"

    const-string v1, "checkAppisRun appProcesses == null false"

    .line 275
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 278
    :cond_24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 279
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string p1, "VSC-DemandCallService"

    const-string v0, "checkAppisRun true"

    .line 280
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_45
    const-string p1, "VSC-DemandCallService"

    const-string v1, "checkAppisRun false"

    .line 284
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4d
    :goto_4d
    return v0
.end method

.method private closeSolt()V
    .registers 2

    .line 307
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/vsimcore/service/AuthQcUIMService;->disableVirtualSim(Landroid/content/Context;)V

    return-void
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 2

    .line 65
    monitor-enter p0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mNMService:Landroid/os/INetworkManagementService;

    monitor-exit p0

    return-object v0

    :cond_9
    const-string v0, "network_management"

    .line 69
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mNMService:Landroid/os/INetworkManagementService;

    .line 71
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mNMService:Landroid/os/INetworkManagementService;

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    .line 72
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private keepActive(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_3c

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3c

    .line 230
    :cond_9
    invoke-virtual {p0}, Lcom/miui/vsimcore/service/DemandCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ucloudapp_status"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 232
    invoke-direct {p0, p1}, Lcom/miui/vsimcore/service/DemandCallService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 234
    invoke-direct {p0}, Lcom/miui/vsimcore/service/DemandCallService;->closeSolt()V

    return-void

    .line 237
    :cond_29
    invoke-direct {p0, p1}, Lcom/miui/vsimcore/service/DemandCallService;->checkAppisRun(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    .line 241
    :cond_30
    invoke-direct {p0, p1}, Lcom/miui/vsimcore/service/DemandCallService;->runApp(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3b
    return-void

    :cond_3c
    :goto_3c
    return-void
.end method

.method private notifyToClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "VSC-DemandCallService"

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyToClient: result_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result_value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->clientCB:Lcom/miui/vsimcore/service/IDemandCallCB;

    if-eqz v0, :cond_2c

    .line 217
    :try_start_22
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->clientCB:Lcom/miui/vsimcore/service/IDemandCallCB;

    invoke-interface {v0, p1, p2}, Lcom/miui/vsimcore/service/IDemandCallCB;->demandCallCB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p1

    .line 219
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private releaseNetwork()V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/miui/vsimcore/service/DemandCallService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private runApp(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_26

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_26

    .line 294
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.ucloudlink.refact.access.ui.AccessEntryService"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 296
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->f()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 297
    invoke-virtual {p0, v0}, Lcom/miui/vsimcore/service/DemandCallService;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_25

    .line 299
    :cond_22
    invoke-virtual {p0, v0}, Lcom/miui/vsimcore/service/DemandCallService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_25
    return-void

    :cond_26
    :goto_26
    return-void
.end method

.method private setPermission()V
    .registers 6

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/vsimcore/service/DemandCallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.mimobile.cloudsim"

    const/16 v2, 0x2000

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 132
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 133
    invoke-direct {p0}, Lcom/miui/vsimcore/service/DemandCallService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    const-string v2, "SYSTEM"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    const-string v1, "VSC-DemandCallService"

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind:setPermission uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_35} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 137
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    :goto_3a
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    const-string v0, "VSC-DemandCallService"

    const-string v1, "onBind: "

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/miui/vsimcore/service/DemandCallService;->setPermission()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VSC-DemandCallService"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind: aPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance p1, Lcom/miui/vsimcore/service/DemandCallService$CmdBinder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/vsimcore/service/DemandCallService$CmdBinder;-><init>(Lcom/miui/vsimcore/service/DemandCallService;Lcom/miui/vsimcore/service/DemandCallService$1;)V

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "connectivity"

    .line 60
    invoke-virtual {p0, v0}, Lcom/miui/vsimcore/service/DemandCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5

    const-string v0, "VSC-DemandCallService"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "com.xiaomi.mimobile.cloudsim"

    .line 89
    invoke-direct {p0, v0}, Lcom/miui/vsimcore/service/DemandCallService;->keepActive(Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
