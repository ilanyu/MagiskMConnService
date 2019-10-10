.class public Lcom/xiaomi/passport/servicetoken/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/passport/servicetoken/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String; = "ServiceTokenUIResponse"


# instance fields
.field private b:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse$1;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse$1;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;->a(Landroid/os/IBinder;)Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/g;->b:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/g;->b:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "ServiceTokenUIResponse"

    const/4 v1, 0x2

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "ServiceTokenUIResponse"

    const-string v1, "AccountAuthenticatorResponse.onRequestContinued"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/g;->b:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    invoke-interface {v0}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;->a()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 6

    const-string v0, "ServiceTokenUIResponse"

    const/4 v1, 0x2

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "ServiceTokenUIResponse"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountAuthenticatorResponse.onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/g;->b:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;->a(ILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2c

    :catch_2c
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "ServiceTokenUIResponse"

    const/4 v1, 0x2

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 46
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    const-string v0, "ServiceTokenUIResponse"

    const-string v1, "AccountAuthenticatorResponse.onResult"

    .line 47
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/g;->b:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;->a(Landroid/os/Bundle;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_18

    :catch_18
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 86
    iget-object p2, p0, Lcom/xiaomi/passport/servicetoken/g;->b:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    invoke-interface {p2}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
