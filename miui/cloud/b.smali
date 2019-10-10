.class public Lmiui/cloud/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "XiaomiAccountManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 14
    new-instance v0, Lmiui/cloud/XiaomiAccountManager$1;

    invoke-direct {v0, p0, p1}, Lmiui/cloud/XiaomiAccountManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/remote/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 26
    new-instance v0, Lmiui/cloud/XiaomiAccountManager$2;

    invoke-direct {v0, p0, p1, p2}, Lmiui/cloud/XiaomiAccountManager$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/remote/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_f

    const/4 p0, 0x0

    goto :goto_13

    .line 34
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_13
    return p0
.end method
