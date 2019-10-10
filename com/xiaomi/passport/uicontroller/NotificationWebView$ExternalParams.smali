.class public Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/NotificationWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalParams"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->a:Ljava/lang/String;

    .line 53
    iput-boolean p2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->b:Z

    .line 54
    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->c:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->e:Ljava/util/Map;

    return-void
.end method
