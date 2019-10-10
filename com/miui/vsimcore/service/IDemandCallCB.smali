.class public interface abstract Lcom/miui/vsimcore/service/IDemandCallCB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/service/IDemandCallCB$Stub;
    }
.end annotation


# virtual methods
.method public abstract demandCallCB(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
