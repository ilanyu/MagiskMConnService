.class public abstract Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/sync/IRemoteFileSyncLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/sync/IRemoteFileSyncLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub$Proxy;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field private static final c:Ljava/lang/String; = "miui.cloud.sync.IRemoteFileSyncLogger"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.cloud.sync.IRemoteFileSyncLogger"

    .line 18
    invoke-virtual {p0, p0, v0}, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lmiui/cloud/sync/IRemoteFileSyncLogger;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "miui.cloud.sync.IRemoteFileSyncLogger"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 30
    instance-of v1, v0, Lmiui/cloud/sync/IRemoteFileSyncLogger;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lmiui/cloud/sync/IRemoteFileSyncLogger;

    return-object v0

    .line 33
    :cond_13
    new-instance v0, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub$Proxy;

    invoke-direct {v0, p0}, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3e

    packed-switch p1, :pswitch_data_44

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_e
    const-string p1, "miui.cloud.sync.IRemoteFileSyncLogger"

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22

    .line 64
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 69
    :goto_23
    invoke-virtual {p0, p1}, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub;->a(Landroid/os/ResultReceiver;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2a
    const-string p1, "miui.cloud.sync.IRemoteFileSyncLogger"

    .line 50
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, p2}, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3e
    const-string p1, "miui.cloud.sync.IRemoteFileSyncLogger"

    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_e
    .end packed-switch
.end method
