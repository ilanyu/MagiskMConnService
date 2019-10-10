.class public interface abstract Lcom/miui/vsimcore/service/IDemandCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/service/IDemandCall$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendCmd(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCB(Lcom/miui/vsimcore/service/IDemandCallCB;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
