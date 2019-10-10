.class public Lusb/uicc/client/virtualsim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "VSC-virtualsim"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "usb_uicc_client_jni"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native processVirtualSim([BI)I
.end method
