Vim�UnDo� aU���ZoÞ�yP=y/v`�37�!�^�"��   L   	        int b = stack[sp--];   :                         _E��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             _E�     �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _E�    �   J   L              }�   I   K          2        ip++; // increment the ip every iteration�   H   J                  eval(fetch());�   G   I              while (running) {�   F   H          int main() {�   E   G          �   D   F          }�   C   E              }�   B   D          	    }�   A   C          	        break;�   @   B          	        // all done!�   ?   A          �   >   @          F	        stack[sp] = result; // set the value to the top of the stack�   =   ?          5	        sp++; // increment stack pointer **before**�   <   >          	        int result = b + a;�   ;   =          <	        // we then add the result and push it to the stack�   :   <          �   9   ;          	        int b = stack[sp--];�   8   :          ?	        // then we pop the top of the stack and store it as b�   7   9          	    �   6   8          	        int a = stack[sp--];�   5   7          5	        // first we pop the stack and store it as a�   4   6          	    case ADD: {�   3   5          	    }�   2   4          	        break;�   1   3          ,	        printf("popped %d\n", val_popped);�   0   2          '	        int val_popped = stack[sp--];�   /   1                  case POP: {�   .   0          
        }�   -   /          	        break;�   ,   .          $	        stack[sp] = program[++ip];�   +   -              	    sp++;�   *   ,                  case PSH: {�   )   +          
        }�   (   *                      break;�   '   )                      printf("done\n");�   &   (                      running = false;�   %   '                  case HLT: {�   $   &              switch (instr) {�   #   %          void eval(int instr) {�   "   $          �   !   #          }�       "              return program[ip];�      !          int fetch() {�                 �                };�                    HLT�                	    POP,�                	    ADD,�                    PSH, 6,�                    PSH, 5,�                const int program[] = {�                �                } InstructionSet;�                   HLT�                   POP,�                   ADD,�                   PSH,�                typedef enum {�                �                int stack[256];�                �                int sp = -1;�                int ip = 0;�   
             bool running = true;�   	             �      
          #include <stdbool.h>�      	          #include <stdio.h>�                �                **/�                �                	VM�                *	This is almost identical to the articles�                �                 /**5�_�                    7       ����                                                                                                                                                                                                                                                                                                                                                             _E��     �   6   8   L      	        int a = stack[sp-1];5�_�                     :       ����                                                                                                                                                                                                                                                                                                                                                             _E��    �   9   ;   L      	        int b = stack[sp-1];5��