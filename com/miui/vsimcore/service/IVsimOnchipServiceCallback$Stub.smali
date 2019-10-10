.class public abstract Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.vsimcore.service.IVsimOnchipServiceCallback"

.field static final TRANSACTION_authUsim:I = 0x2

.field static final TRANSACTION_getCardData:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.vsimcore.service.IVsimOnchipServiceCallback"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.miui.vsimcore.service.IVsimOnchipServiceCallback"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 29
    instance-of v1, v0, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;

    return-object v0

    .line 32
    :cond_13
    new-instance v0, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.miui.vsimcore.service.IVsimOnchipServiceCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_34

    packed-switch p1, :pswitch_data_38

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 60
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback$Stub;->authUsim([B)[B

    move-result-object p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v2

    .line 50
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback$Stub;->getCardData(Ljava/lang/String;)[B

    move-result-object p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v2

    .line 45
    :cond_34
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_22
        :pswitch_10
    .end packed-switch
.end method
