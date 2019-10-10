.class public Lcom/miui/vsimcore/service/VsimMTKService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final EVENT_REQ:I = 0x1

.field public static final EVENT_RESP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VSC-VsimMTKService"

.field private static mCb:Lcom/miui/vsimcore/service/IVMTKServiceCallback;


# instance fields
.field private final mBinder:Lcom/miui/vsimcore/service/IVMTKService$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Lcom/miui/vsimcore/service/VsimMTKService$1;

    invoke-direct {v0, p0}, Lcom/miui/vsimcore/service/VsimMTKService$1;-><init>(Lcom/miui/vsimcore/service/VsimMTKService;)V

    iput-object v0, p0, Lcom/miui/vsimcore/service/VsimMTKService;->mBinder:Lcom/miui/vsimcore/service/IVMTKService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/vsimcore/service/VsimMTKService;)Lcom/miui/vsimcore/service/IVMTKService$Stub;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/miui/vsimcore/service/VsimMTKService;->mBinder:Lcom/miui/vsimcore/service/IVMTKService$Stub;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/vsimcore/service/IVMTKServiceCallback;)Lcom/miui/vsimcore/service/IVMTKServiceCallback;
    .registers 1

    .line 13
    sput-object p0, Lcom/miui/vsimcore/service/VsimMTKService;->mCb:Lcom/miui/vsimcore/service/IVMTKServiceCallback;

    return-object p0
.end method

.method public static printHexString(Ljava/lang/String;[B)V
    .registers 7

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 102
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_44

    .line 104
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_44
    const-string p1, "VSC-UIM-COMMOND"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static processApdu([B)[B
    .registers 5

    .line 90
    :try_start_0
    sget-object v0, Lcom/miui/vsimcore/service/VsimMTKService;->mCb:Lcom/miui/vsimcore/service/IVMTKServiceCallback;

    invoke-interface {v0, p0}, Lcom/miui/vsimcore/service/IVMTKServiceCallback;->uimRemoteApduIndication([B)[B

    move-result-object v0

    const-string v1, "get response apdu "

    .line 91
    invoke-static {v1, v0}, Lcom/miui/vsimcore/service/VsimMTKService;->printHexString(Ljava/lang/String;[B)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    const-string v1, "VSC-VsimMTKService"

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to authUsim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string p1, "VSC-VsimMTKService"

    const-string v0, "onBind()"

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/miui/vsimcore/service/VsimMTKService;->mBinder:Lcom/miui/vsimcore/service/IVMTKService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "VSC-VsimMTKService"

    const-string v1, "onCreate()"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "VSC-VsimMTKService"

    const-string v1, "onDestroy()"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/miui/vsimcore/service/VsimMTKService;->stopSelf()V

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
