.class public Lcom/miui/vsimcore/network/CustomRequestMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/network/CustomRequestMgr$ErrorListener;,
        Lcom/miui/vsimcore/network/CustomRequestMgr$SuccessListener;,
        Lcom/miui/vsimcore/network/CustomRequestMgr$ParamsListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "VSC-CustomRequestMgr"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;ZLcom/miui/vsimcore/network/CustomRequestMgr$SuccessListener;Lcom/miui/vsimcore/network/CustomRequestMgr$ErrorListener;Lcom/miui/vsimcore/network/CustomRequestMgr$ParamsListener;)V
    .registers 6

    return-void
.end method

.method private static a(ILjava/lang/String;ZLcom/miui/vsimcore/network/CustomRequestMgr$SuccessListener;Lcom/miui/vsimcore/network/CustomRequestMgr$ErrorListener;Lcom/miui/vsimcore/network/CustomRequestMgr$ParamsListener;Lcom/android/volley/RequestQueue;)V
    .registers 7

    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static b(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    .line 83
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "miuiVersion"

    .line 84
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "miuiChannel"

    .line 85
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appVersion"

    .line 86
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v1

    const-string v2, "com.miui.virtualsim"

    invoke-static {v1, v2}, Lcom/miui/vsimcore/utils/c;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "androidVersion"

    .line 87
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "customization"

    .line 88
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "language"

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "root"

    .line 91
    invoke-static {}, Lcom/miui/vsimcore/utils/g;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "simCardOperatorNumeric"

    .line 92
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
