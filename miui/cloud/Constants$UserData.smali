.class public Lmiui/cloud/Constants$UserData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserData"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "extra_micloud_status_info_quota"

.field public static final b:Ljava/lang/String; = "extra_micloud_vip_availiable"

.field public static final c:Ljava/lang/String; = "extra_find_device_enabled"

.field public static final d:Ljava/lang/String; = "extra_find_my_device_token"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
