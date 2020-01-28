%% 实战程序框架：图形界面
choice=ex_3_menu();
while(choice~=3)
    switch(choice)
        case 1
            yesorno=ex_3_menu_choice('是否开启1、卫星数据读取画图程序？');
            if(strcmp(yesorno,'No'))
                return;
            end
        case 2
            yesorno=ex_3_menu_choice('是否开启2、微分方程数值求解示例？');
            if(strcmp(yesorno,'No'))
                return;
            end
    end    
    choice=ex_3_menu();
end
