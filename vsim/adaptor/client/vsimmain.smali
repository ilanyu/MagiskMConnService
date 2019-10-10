.class public Lvsim/adaptor/client/vsimmain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "VSC-vsimmain"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "vsim-client"

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

.method public static native getPlatformCapability()I
.end method

.method public static native processVSIM(II)I
.end method

.method public static native restartVSIM(I)I
.end method
