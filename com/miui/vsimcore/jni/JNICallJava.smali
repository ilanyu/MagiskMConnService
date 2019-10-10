.class public Lcom/miui/vsimcore/jni/JNICallJava;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VSC-JNICallJava"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authUsim([B)[B
    .registers 3

    const-string v0, "VSC-JNICallJava"

    const-string v1, "authUsim"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {p0}, Lcom/miui/vsimcore/service/VsimOnchipService;->authUsim([B)[B

    move-result-object p0

    return-object p0
.end method
