.class public Lcom/miui/vsimcore/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "android.system.com.miui.virtualsim.agree_protocal_flag"

.field public static final b:Ljava/lang/String; = "android.system.com.miui.virtualsim.revoke_protocal_flag"

.field public static final c:Ljava/lang/String; = "android.system.com.miui.mimobile.revoke_protocal_flag"

.field public static final d:Ljava/lang/String; = "android.system.com.miui.virtualsim.agree_protocal_flag_uploaded"

.field public static final e:Ljava/lang/String; = "android.system.com.miui.virtualsim.imei"

.field public static final f:Ljava/lang/String; = "com.miui.virtualsim.imei.new"

.field public static final g:Ljava/lang/String; = "virtualsim.key1"

.field public static final h:Ljava/lang/String; = "android.system.com.miui.virtualsim.macaddress"

.field public static final i:Ljava/lang/String; = "virtualsim.key2"

.field public static final j:Ljava/lang/String; = "reset_old_vsim_state"

.field public static final k:Ljava/lang/String; = "com.miui.virtualsim.siminfoid"

.field public static final l:Ljava/lang/String; = "vsim_server_flow_data"

.field public static final m:Ljava/lang/String; = "com.miui.mimobile.enter_misim"

.field private static final n:Ljava/lang/String; = "balance_diff_"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 29
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 33
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 37
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
